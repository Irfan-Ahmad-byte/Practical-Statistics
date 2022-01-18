library('matrixStats')

state <- read.csv('state.csv')



mn <- mean(state[['Population']])
md <- median(state[['Population']])
wmn <- weighted.mean(state[['Murder.Rate']], w=state[['Population']])
wmd <- weightedMedian(state[['Murder.Rate']], w=state[['Population']])

print(head(state, 5))
print(mn)
print(md)
print(wmn)
print('weighted median: ')
print(wmd)