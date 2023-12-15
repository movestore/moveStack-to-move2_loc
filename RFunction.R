library('move')
library('move2')

## The parameter "data" is reserved for the data object passed on from the previous app

## to display messages to the user in the log file of the App in MoveApps one can use the function from the logger.R file: 
# logger.fatal(), logger.error(), logger.warn(), logger.info(), logger.debug(), logger.trace()

rFunction = function(data) {
  result <- mt_as_move2(data,time_column=move::timestamps(data),track_id_column=move::trackId(data))
  return(result)
}

#attr(mt_time(result),"tz")
#attr(timestamps(data),"tz)