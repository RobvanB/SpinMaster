class ProcessFilesController < ApplicationController
  def index
    #byebug
  end

  def start_process
    require 'csv'
    #byebug
    sh = SpinHeader.new
    se = SpinEntry.new
    FileStore.where(processed: false).each do |file|
      csv_text = file.attachment.file.read            # the attachment field is of type 'uploader' (SpinfileUploader)
      csv = CSV.parse(csv_text)
      csv.each do |row|
          if row[0] == "Metric" || row[0] == "Stages Data" || row[1] == "Kilometers"  # Skip headers
            next # Don't need them
          end

          if row.count == 6
            # "Time,Kilometers,KPH,Watts,HR,RPM"
            # Create the line records
            # Convert the time to actual elapsed seconds
            timestr = row[0].split(':')
            case timestr.length
            when 2
              sec_el = (timestr.first.to_i * 60) + timestr.second.to_i
            when 3
              sec_el = (timestr.first.to_i * 60 * 60) + (timestr.second.to_i * 60) + timestr.third.to_i
            end

            se = SpinEntry.new(time_recorded: row[0], distance: row[1], speed: row[2], power: row[3], hrate: row[4], rpm: row[5], seconds_elapsed: sec_el )
            if !se.save
              flash.now[:danger] = "Error loading data"
              return
            end
          end

          # Create the header record - happens once all details for a stage are loaded
          if row[0] .match(/Stage_/)
            #byebug
            sh = SpinHeader.new(file_store_id: file.id, notes: file.description, stage: row[0])
          end

          if row.count == 2
            #byebug
            case row[0]
            when "Time"
              #byebug
              sh.update(time_recorded: row[1])
            when "Distance"
              sh.update(distance_recorded: row[1])
            when "Speed_Avg"
              sh.update(avg_speed_recorded: row[1])
            when "Watts_Avg"
              sh.update(avg_watts_recorded: row[1])
            when "HR_Avg"
              sh.update(avg_hr_recorded: row[1])
            when "RPM_Avg"
              sh.update(avg_rpm_recorded: row[1])
            when "Speed_Max"
              sh.update(max_speed_recorded: row[1])
            when "Watts_Max"
              sh.update(max_watts_recorded: row[1])
            when "HR_Max"
              sh.update(max_hr_recorded: row[1])
            when "RPM_Max"
              sh.update(max_rpm_recorded: row[1])
            when "KCal"
              sh.update(kcal_recorded: row[1])
            when "KJ"
              sh.update(kj_recorded: row[1])
            end
          end
          if sh
            sh.save
          end
      end # csv.each (row)
      file.update(processed: true)
      file.save
    end # FileStore.where
    flash.now[:notice] = "Files processed"
    render :index
  end # start_process method

end
