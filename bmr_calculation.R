#Name: John McCrary
#Purpose: chocolate bar calculations

#input
weight<-as.numeric(readline("Enter your weight in pounds: "))
height<-as.numeric(readline("Enter your height in inches: "))
age<-as.numeric(readline("Enter your age in years: "))

#computation
bmr_woman <- 655 + (4.3 * weight) + (4.7 * height) - (4.7 * age)
bmr_man <- 66 + (6.3 * weight) + (12.9 * height) - (6.8 * age)

bars_woman <- bmr_woman / 230
bars_man <- bmr_man / 230

#output
cat(sprintf("A woman with weight %0.2f pounds
            with height %0.2f inches, and age %.0f years
            should consume %.0f chocolate bars.\n\n",
            weight, height, age, bars_woman))
cat(sprintf("A man with weight %0.2f pounds
            with height %0.2f inches, and age %.0f years
            should consume %.0f chocolate bars.\n",
            weight, height, age, bars_man))
