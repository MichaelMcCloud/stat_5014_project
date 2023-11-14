get_daily_update <-
function(tickers = "SPY", update_day = "2023-10-02") {
  # this function gets daily stock price data for a vector of tickers past in
  # the function will return an empty tibble in the case of the date the
  # market is closed or includes some other invalid date
  stock_metrics <- tq_get("T", from = "2023-10-03", to = "2023-10-04")
  stock_metrics[1,1] <- "-"
  
   stock_metrics <- bind_rows(stock_metrics,
                            tq_get(x = tickers, 
                              from   = update_day, 
                              to.    = ymd(update_day) + 1))
   
   stock_metrics <- stock_metrics %>%
     select(-volume) %>%
     filter(symbol != "_") %>%
     filter(complete.cases(.))
   return(stock_metrics)
   
}
