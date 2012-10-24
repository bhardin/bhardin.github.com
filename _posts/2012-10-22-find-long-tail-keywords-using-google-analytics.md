---
layout: post
title: "Find Long Tail Keywords Using Google Analytics"
image: http://farm1.staticflickr.com/1/1110334_a1977da14f.jpg
image_credit: drp
category: 
tags: [seo, marketing, ROI]
meta_description: 
---
I recently discovered [HitTail](http://www.hittail.com), an awesome service for discovering long tail keywords to maximize SEO.

HitTail uses a proprietary alogrithm for identifying keywords used in search terms which you should target. After using the service for about a week, I wanted to understand how the algorithm worked. I tumbled down the rabbit hole and learned crazy amounts along the way.

## Long Tail Keywords

In Search Engine Optimization (SEO) there are two types of keywords. _Head Terms_ and _Long Tail keywords_. Head terms are single keywords that many people target. An example of a head term would be _detergent_. Examples of long tail keywords would be _Tough Stain Detergent_, _Good for the Environment Detergent_, and _Mild Gentle on Skin Detergent_.

Long tail keywords have many advantages:

1. __Higher conversion rates__ - Since the user is more specific in their search terms they are more qualified. A user searching for _boots_ is less likely to purchase compared to a user searching for _mid-calf black boots with laces_.

2. __The majority of search traffic is long tail__ - Long tail searches make up [70% of search traffic](http://www.seomoz.org/beginners-guide-to-seo/keyword-research). However, I couldn't find a clear definition as to when long tail started and head terms ended.

3. __Less competitive__ - Sites constantly fight for control of head terms such as Detergent. Long tail keywords, because they are more specific, have less competition.

4. __Long Tail helps you capture head terms__ - Search engines constantly improve their methods for indexing sites to deliver relevant content to the search being performed. Focusing on long tail keywords can help you capture head terms because you are writing more content, across your site, which all contain head terms.
 
## What HitTail does
According HitTail's [site](http://www.hittail.com/why.asp), "HitTail tells you, in real-time, the most promising organic keywords you should target based on your existing traffic." and is "Guaranteed to increase your organic search traffic"

I really don't care about the "real-time" aspect of the service. What I did want was a way to identify topics I should write about based on what search terms users were using to find my site. This would help me identify posts I could write for [additional learning](/2012/06/challenge-yourself-always-learn/).

Remember, [I'm cheap](/2012/10/im-cheap-products-i-pay-for-have-to-be-awesome/) and a service has to be incredible for me to pay for it. I assumed Google Analytics had the same data HitTail was using to determine what long tail keywords I should focus on. So, how could I generate a report in Google Analytics which has the same function as HitTail.

## Identifying the Keywords

The first thing I did was grab what HitTail was already suggesting for me. Once I had this list, I began searching through _Traffic Sources -> Search Engine Optimization -> Queries_ to identify some common thread among them.

It was interesting that not all of HitTail's suggestions were in Google Analytics. This may be enough for people with larger sites to pay for the service. 

Here is a breakdown of the suggested keywords I found in Google Analtyics:

| Query | Impressions | Clicks | Average Position | CTR |
|:------|------------:|:------:|:----------------:|:---:|
| fear of rejection       | 170 |  5  | 68  | 2.94% 
| market size             | 170 |  5  | 140 | 2.94% 
| types of personalities  | 70  |  5  | 58  | 7.14% 
| different personalities | 500 |  16 | 30  | 3.20% 
| cross site scripting    | 90  |  5  | 210 | 5.56% 
| different personality   | 900 |  12 | 45  | 1.33% 
| types of personality    | 60  |  5  | 120 | 8.33% 

My site gets around 400 hits a day. I don't know if the same results would apply to a larger site.

Things I noticed:

* Keyword suggestions of either 2 or 3 keywords.
* Average Position was between 30 and 250.
* Click-Through-Rate were all greater than 1.33%.
* Impressions greater than 60.

## Creating a Google Analytics Report
All of the things I noticed seemed to make logical sense. I decided to write a report to filter all of the search queries for the data shown above.

I decided on the following filters:

* Clicks Great Than 4
* Average Position Less than 250 and greater than 29.
* CTR greater than 1.5%.

I decided to fudge the Click-Through-Rate just a bit, but everything else I left alone. This part was simple through the "Advanced Search" section on the _Queries_ Report.

![Advanced Search on Google Analytics Queries Report](http://f.cl.ly/items/3W053Y3N2B1W1v2K302p/AdvancedFilter.png)

Once I discovered this section, it was easy to create a similar report. I entered all of the filters I decided on.

![Filtering Queries Report](http://f.cl.ly/items/0a1p0x3Q1R2G1Z072j00/Screen%20shot%202012-10-22%20at%202.01.07%20PM.png)

I needed to filter the results one more level by only focusing on search terms of at least 2 words. This was challenging until I figured out I could create filters with regular expressions. I created a regular expressions against the search query with the following:

	^([^ ]+ ){1,50}[^ ]+$

This filters keywords which have between 1 and 50 spaces in them. This removes all of the "single word" keywords used for head terms. Bam!

## Results

Although you still need to sift through the terms to identify things to write about, it is pretty awesome to have this report at my finger tips. I don't know whether the report will be as effective as just using a service like HitTail, but it is a start. I will try it for a while and see if it lives up to what I expect.