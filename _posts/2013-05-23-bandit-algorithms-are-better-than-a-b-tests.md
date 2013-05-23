---
layout: post
title: "Bandit Algorithms are Better than A/B Tests"
image: http://farm1.staticflickr.com/44/193395287_acb4d8e3ba.jpg
image_credit: Lynne Hand
image_credit_url: http://www.flickr.com/photos/your_teacher/193395287/
tags: [algorithms, experimenting, optimization]
meta_description: Bandit algorithms are a great alternative to traditional A/B testing. Quickly understand three of the major algorithms used for bandit testing.
---

I've been reading the amazing book [Bandit Algorithms for Website Optimization](http://www.amazon.com/gp/product/1449341330/ref=as_li_ss_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=1449341330&linkCode=as2&tag=breharsblo-20) by John Myles White. The book gives a general overview of bandit algorithms and goes into depth on three bandit algorithms with python implementations. The three implementations which are covered are Epsilon-Greedy, Softmax, and Upper Confidence Bound.

The book does an excellent job of breaking down material previously only found in academic papers. He also explains how bandit algorithms are better than traditional [A/B testing](http://en.wikipedia.org/wiki/A/B_testing). To benefit from bandit algorithms you need to be willing to run experiments for longer periods of time. If you are okay with losing some reward (this could be profit) because your experiment is short-term then A/B tests are acceptable.

However, if you want to continually be experimenting to determine how to maximize your rewards, bandit algorithms are a much better approach.

## The Problem Bandit Algorithms Solve
A bandit algorithm solves the following problem:

Given n slot machines, how can we maximize our payouts by determining which machine has the best payouts.

The name comes from the slang term for a slot machine: one-armed bandit. These algorithms can be applied to systems (websites) where you want to test aspects of the system (colors, layouts, etc.) in order to maximize the reward (conversion, revenue).

One of the interesting aspects of bandit algorithms is the term "test". Compared to traditional A/B testing, bandit algorithms don't ever need to be turned off. It is a much different way of thinking. Bandit's will always attempt to maximize profits. So one "test" may actually be the best, but the bandit continues to deliver the winner without the need for you to turn it off.

With A/B testing you would lose the potential reward every time you served the inferior test. This problem occur when testing bandit algorithms.

## Epsilon-Greedy
Epsilon-Greedy (EG) is probably the easiest bandit algorithm to understand.

Before choosing the test to return (arm) the algorithm determines whether we should pull the arm we currently think is the best or if we should experiment by pulling one of the other arms. Epsilon is the percentage of the time we want to experiment.

With all bandit algorithms, after the arm is selected we wait to see if the reward is obtained. We then update our knowledge about each of the arms we are testing.

Epsilon-Greedy suffers from the same problem of traditional A/B testing, it always experiments even if it has confidence the arm being selected is a poor choice. This can be limited by annealing the algorithm.

Annealing is allowing epsilon to change over time. At the beginning of the experiment epsilon is large, but over time it becomes smaller and smaller until the algorithm never experiments.

## Softmax
All bandit-algorithms attempt to return the best arm most of the time. With Epsilon-Greedy this percentage is determined by the value of epsilon (`1 - epsilon`). Softmax doesn't use this approach.

To determine which arm should be pulled, Softmax randomly selects an arm proportional to the amount of reward it has received before.

### Softmax Example
Say we have been running experiments on 3 arms. Through our previous tests, we've determined that arm1 converts 20% of the time, arm2 converts 30% of the time, and arm3 converts 12% of the time. A new visitor comes to our site and we need to determine which arm to return. We choose a random number in order to determine which arm to select.

#### Naive Approach

We would select arm1 32.3% of the time: 

    arm1 / arm1 + arm2 + arm3 = 0.20 / (0.20 + 0.30 + 0.12) = .20 / 0.62 = 0.323

We would select arm1 48.4% of the time: 

    arm2 / arm1 + arm2 + arm3 = 0.30 / (0.20 + 0.30 + 0.12) = .30 / 0.62 = 0.484

We would select arm1 19.3% of the time: 

    arm3 / arm1 + arm2 + arm3 = 0.12 / (0.20 + 0.30 + 0.12) = .12 / 0.62 = 0.193

#### Better Approach
What makes Softmax interesting is the ability to scale the amount of variation in the system. Initially the arms should have large fluctuations but over time slowly stabilize. Softmax algorithms deal with this by introducing temperature. In Mr. White's words:

> [The] temperature parameter [is] based on an analogy with [the Boltzmann distribution in] physics in which systems at high temperatures tend to behave randomly, while they take on more structure at low temperatures.

Arm1: 
    (arm1 / temperature) / ((arm1 / temperature) + (arm2 / temperature) + (arm3 / temperature))

Arm2:
    (arm2 / temperature) / ((arm1 / temperature) + (arm2 / temperature) + (arm3 / temperature))

Arm3:
    (arm3 / temperature) / ((arm1 / temperature) + (arm2 / temperature) + (arm3 / temperature))

With temperature parameter we can apply the annealing principle the same way we do with Epsilon-Greedy.

## Upper Confidence Bound
The last of the algorithms presented is the Upper Confidence Bound (UCB1) algorithm. UCB makes an arm selection based on the [amount of confidence](http://en.wikipedia.org/wiki/Confidence_interval) we have in each arm.

The other two algorithms do not use confidence intervals to make arm selections. They experiment randomly. In contrast, UCB1 is completely deterministic. Given a set of data, you can guarantee what arm UCB1 will select.

One caveat about UCB1: UCB1 assumes the maximum reward is 1. If the reward can be higher there are other variants of UCB you can use.
