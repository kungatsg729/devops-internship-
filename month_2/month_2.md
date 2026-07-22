# Two Month Report

Today marks the end of our second month at the internship program in DevOps provided by Codavatar, and with it, the end of the 8-week program overall.

Building on what we covered in the first month, the content in these final weeks pushed us into more advanced territory:

- Deploying containerized applications to AWS EC2
- Using S3 for cloud storage
- Container orchestration with Kubernetes (Minikube)
- Monitoring and observability using Prometheus and Grafana
- Secrets management with HashiCorp Vault
- Bringing everything together into one final integrated project

If the first month was about getting comfortable with the basics, this second month was about scaling that up into something closer to a real production setup. Moving from running things locally to actually deploying on the cloud was a big shift, and it made a lot of the earlier concepts click into place in ways they hadn't before.

Working with AWS in particular took some getting used to. Between security groups, SSH permissions, and the small but important detail that public IPs don't work over https, there was a fair bit of trial and error before things actually loaded in the browser. But once the app was live on an EC2 instance, it felt like a genuine milestone rather than just another exercise.

Kubernetes was another highlight. Watching a deployment scale up and down, and seeing pods get recreated automatically after being deleted, gave us a much clearer picture of why orchestration tools exist in the first place. Docker alone only gets you so far, and this week made that gap obvious.

The last stretch, covering Prometheus, Grafana, and Vault, tied the whole internship together conceptually. Monitoring showed us how to actually see what our systems are doing instead of guessing, and Vault showed us how secrets are supposed to be handled instead of being left sitting in plaintext files, which is a habit we're glad we broke early.

As with the first month, we ran into plenty of hurdles along the way, especially around networking and container communication, but working through them ourselves rather than being handed the answer made the concepts stick a lot better than just reading about them would have.

## Working Environment

The working environment continued to be just as supportive through this second half of the internship. The team remained approachable whenever we got stuck, and the culture of sharing knowledge across different courses carried on right to the end. If anything, the collaboration became more valuable during these weeks, since the problems we were debugging were less about syntax and more about how different pieces of infrastructure talk to each other, which benefits a lot from a second pair of eyes.

## Overall Experience

Overall, the second month has been just as rewarding as the first, if not more so, since we finally got to see how all the individual pieces from earlier weeks fit into a single working pipeline.

As mentioned in our first report, we noticed Terraform and Ansible were not part of the official curriculum, and we continued self-learning both throughout this month to round out our understanding of infrastructure as code and configuration management, since these are tools we expect to run into often in real DevOps roles.

## Final Integration

The last week was less about learning something new and more about proving that everything actually works together. We took the Flask application from previous weeks and tied it into one coherent pipeline: containerized with Docker, version controlled and validated through GitHub Actions, deployed to an EC2 instance, backed by PostgreSQL and MongoDB, monitored through Prometheus and Grafana, and secured with Vault for credential management. Seeing it all connect end to end, rather than as separate weekly exercises, was the most satisfying part of the entire internship.

## Conclusion

Looking back at where we started two months ago, not knowing much about what DevOps even involved, to now being able to take an application from a local script all the way to a monitored, secured deployment on the cloud, the progress feels very real. Each week built directly on the last, and it wasn't until this final integration that the full value of that progression became clear.

Going forward, we plan to keep building on this foundation, particularly with Terraform, Ansible, and Helm, to close the remaining gaps between what this program covered and what we expect to see in an actual DevOps role.

