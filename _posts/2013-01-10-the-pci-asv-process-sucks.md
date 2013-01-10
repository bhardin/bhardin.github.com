---
layout: post
title: "The PCI ASV Process Sucks"
image: http://farm4.staticflickr.com/3193/2500097744_45620f6382.jpg
image_credit: Dinkel	
tags: [pci, compliance, testing, infosec]
meta_description: The annual review process for being a PCI Approved Scanning Vendor is bad. The review is subjective.
---

> "Security and PCI-DSS aren't exact sciences." - Approved Scanning Vendor Grader

At McAfee, I worked on a product that helped companies comply with PCI-DSS requirements. McAfee was an Approved Scanning Vendor and helped fulfill a certain part of the PCI-DSS requirement.

An Approved Scanning Vendor (ASV) is an organization that works on behalf of the PCI council. An ASV determines if Internet facing hosts are within PCI-DSS compliance. The PCI Data Security Standard (PCI-DSS) is a set of guidelines that merchants, people who take money online, can use to secure payment transaction.

The Payment Card Industry (PCI) accredits ASVs through an annual review process. As an ASV, you are scanning for known vulnerabilities in servers and applications looking for low-hanging fruit that attackers can exploit to gather credit card data.

Every year each ASV organization has to validate they can identify PCI-DSS issues with their scanning technology. The idea is to scan for potential vulnerabilities on Internet facing servers. 

According to the [PCI Standards Council][1]:

> The PCI Security Standards Council maintains a __structured process__ for security solution providers to become Approved Scanning Vendors (ASVs), as well as to be re-approved each year.

I went through the ASV test twice and neither time was it structured. The test involves scanning a Class-C range of IP addresses and present a detailed report of all the findings. The PCI council requires the automation of the entire scanning process.

You are given three tries to pass the test. After every test you  a conference call is setup between the ASV and the people grading the test.

We would always fail the first test. One of the graders explained, "everyone fails their first test". 

This was interesting because each test became more expensive. The first test was $10,000 the next test was $15,000 and the third test was $20,000. The PCI Council has changed the cost of structure of the test. Each test is now $10,000.

Another quirk is the graders don't tell you what you missed. This is understandable, but stressful, because you don't know how to improve your scanning technology.

At the time, we were subletting our scanner to another ASV to use. They would use our technology for scanning and present a report to their customers with a different cover page. The scanning and reporting technology was the same.

During one annual review, we decided to audit the testers. Because my team was performing both tests, __we decided to present the same report with the same findings__, but with two different cover pages. One report was from us and one report was  for the sublet company.

The grades and results of the test were completely different! One section would be wrong on the first report but correct on the second.

When we confronted the grader, his response was the quote I opened with, "Well, security and PCI-DSS aren't exact sciences." We were utterly disgusted. The results of the test frustrated the team. We thought the entire process was a scam. Although we continued to scan other organizations to validate their PCI compliance, because that's how we made profit.

[1]: https://www.pcisecuritystandards.org/approved_companies_providers/approved_scanning_vendors.php
