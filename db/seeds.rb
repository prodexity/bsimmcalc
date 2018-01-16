# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

### BSIMM8 domains

d_governance = Domain.create(
  title: "Governance",
  descr: "Governance includes those practices that help organize, manage, and measure a software security initiative. Staff " \
         "development is also a central governance practice.",
  version: 8
)
d_intelligence = Domain.create(
  title: "Intelligence",
  descr: "Intelligence includes those practices that result in collections of corporate knowledge used in carrying out activities " \
         "throughout the organization. Collections include both proactive security guidance and organizational threat modeling.",
  version: 8
)
d_ssdl = Domain.create(
  title: "SSDL Touchpoints",
  descr: "SSDL Touchpoints includes those practices associated with analysis and assurance of particular software development " \
         "artifacts and processes. All software security methodologies include these practices.",
  version: 8
)
d_deployment = Domain.create(
  title: "Deployment",
  descr: "Deployment includes those practices that interface with traditional network security and software maintenance " \
         "organizations. Software configuration, maintenance, and other environment issues have direct impact on software security.",
  version: 8
)

# BSIMM8 practices

p_sm = Practice.create(
  domain: d_governance,
  title: "Strategy & Metrics",
  short: "SM",
  descr: "The Strategy & Metrics practice encompasses planning, assigning roles and responsibilities, identifying software security " \
         "goals, determining budgets, and identifying metrics and gates.",
  version: 8
)
p_cp = Practice.create(
  domain: d_governance,
  title: "Compliance & Policy",
  short: "CP",
  descr: "The Compliance & Policy practice is focused on identifying controls for compliance regimens such as PCI DSS and HIPAA, " \
         "developing contractual controls such as service-level agreements (SLAs) to help control COTS software risk, setting " \
         "organizational software security policy, and auditing against that policy.",
  version: 8
)
p_t = Practice.create(
  domain: d_governance,
  title: "Software Security Training",
  short: "T",
  descr: "Training has always played a critical role in software security because software developers and architects often start with " \
         "little security knowledge.",
  version: 8
)
p_am = Practice.create(
  domain: d_intelligence,
  title: "Attack Models",
  short: "AM",
  descr: "Attack Models capture information used to think like an attacker: threat modeling, abuse case development and refinement, " \
         "data classification, and technology-specific attack patterns.",
  version: 8
)
p_sfd = Practice.create(
  domain: d_intelligence,
  title: "Security Features & Design",
  short: "SFD",
  descr: "The Security Features & Design practice is charged with creating usable security patterns for major security controls " \
         "(meeting the standards defined in the Standards and Requirements practice), building middleware frameworks for those " \
         "controls, and creating and publishing other proactive security guidance.",
  version: 8
)
p_sr = Practice.create(
  domain: d_intelligence,
  title: "Standards & Requirements",
  short: "SR",
  descr: "The Standards & Requirements practice involves eliciting explicit security requirements from the organization, " \
         "determining which COTS to recommend, building standards for major security controls (such as authentication, input " \
         "validation, and so on), creating security standards for technologies in use, and creating a standards review board.",
  version: 8
)
p_aa = Practice.create(
  domain: d_ssdl,
  title: "Architecture Analysis",
  short: "AA",
  descr: "Architecture Analysis encompasses capturing software architecture in concise diagrams, applying lists of risks and " \
         "threats, adopting a process for review (such as STRIDE or Architecture Risk Analysis), and building an assessment and " \
         "remediation plan for the organization.",
  version: 8
)
p_cr = Practice.create(
  domain: d_ssdl,
  title: "Code Review",
  short: "CR",
  descr: "The Code Review practice includes use of code review tools, development of tailored rules, customized profiles for tool " \
         "use by different roles (for example, developers versus auditors), manual analysis, and tracking/measuring results.",
  version: 8
)
p_st = Practice.create(
  domain: d_ssdl,
  title: "Software Security Testing",
  short: "ST",
  descr: "The Security Testing practice is concerned with prerelease testing, including integrating security into standard quality " \
         "assurance processes. The practice includes use of black-box security tools (including fuzz testing) as a smoke test in " \
         "QA, risk-driven white-box testing, application of the attack model, and code coverage analysis. Security testing focuses " \
         "on vulnerabilities in construction.",
  version: 8
)
p_pt = Practice.create(
  domain: d_deployment,
  title: "Penetration Testing",
  short: "PT",
  descr: "The Penetration Testing practice involves standard outside-in testing of the sort carried out by security specialists. " \
         "Penetration testing focuses on vulnerabilities in the final configuration and provides direct feeds to defect management " \
         "and mitigation.",
  version: 8
)
p_se = Practice.create(
  domain: d_deployment,
  title: "Software Environment",
  short: "SE",
  descr: "The Software Environment practice concerns itself with OS and platform patching, web application firewalls, installation " \
         "and configuration documentation, application monitoring, change management, and ultimately, code signing.",
  version: 8
)
p_cmvm = Practice.create(
  domain: d_deployment,
  title: "Configuration & Vulnerability Management",
  short: "CMVM",
  descr: "The Configuration Management & Vulnerability Management practice concerns itself with patching and updating " \
         "applications, version control, defect tracking and remediation, and incident handling.",
  version: 8
)

# BSIMM8 activities

# rubocop:disable LineLength
a_sm11 = Activity.create(
  practice: p_sm,
  bsid: "SM1.1",
  title: "Publish process (roles, responsibilities, plan), evolve as necessary.",
  descr: "The process for addressing software security is broadcast to all stakeholders so that everyone knows the plan. Goals, roles, responsibilities, and activities are explicitly defined. Most organizations pick and choose from a published methodology, such as the Microsoft SDL or the Synopsys Touchpoints, and then tailor the methodology to their needs. An SSDL process must be adapted to the specifics of the development process it governs (e.g., waterfall, agile, etc.) and evolves both with the organization and the security landscape. A process must be published to count. In many cases, the methodology is published only internally and is controlled by the SSG. The SSDL does not need to be publicly promoted outside of the firm to have the desired impact.",
  level: 1,
  version: 8
)
a_sm12 = Activity.create(
  practice: p_sm,
  bsid: "SM1.2",
  title: "Create evangelism role and perform internal marketing.",
  descr: "In order to build support for software security throughout the organization, someone in the SSG plays an evangelism role. This internal marketing function helps keep executives and all other stakeholders current on the magnitude of the software security problem and the elements of its solution. Evangelists might give talks for internal groups including executives, extend invitations to outside speakers, author white papers for internal consumption, or create a collection of papers, books, and other resources on an internal website and promote its use. A canonical example of such an evangelist was Michael Howard’s role at Microsoft just after the Gates memo. As another example, an agile coach familiar with security can help teams adopt better software security practices as they transform to an agile methodology.",
  level: 1,
  version: 8
)
a_sm13 = Activity.create(
  practice: p_sm,
  bsid: "SM1.3",
  title: "Educate executives.",
  descr: "Executives are periodically shown the consequences of inadequate software security and the negative business impact that poor security can have. They’re also shown what other organizations are doing to attain software security. By understanding both the problem and its proper resolution, executives come to support the software security initiative as a risk management necessity. In its most dangerous form, such education arrives courtesy of malicious hackers or public data exposure incidents. Preferably, the SSG demonstrates a worst-case scenario in a controlled environment with the permission of all involved (e.g., actually showing working exploits and their business impact). In some cases, presentation to the Board can help garner resources for an ongoing software security initiative. Bringing in an outside guru is often helpful when seeking to bolster executive attention. Tying education to specific development areas, such as mobile or cloud services, can help convince leadership to accept SSG recommendations where they might otherwise be ignored in favor of faster release dates or other priorities.",
  level: 1,
  version: 8
)
a_sm14 = Activity.create(
  practice: p_sm,
  bsid: "SM1.4",
  title: "Identify gate locations, gather necessary artifacts.",
  descr: "The software security process includes release gates/checkpoints/milestones at one or more points in the SDLC or, more likely, the SDLCs. The first two steps toward establishing security-specific release gates are 1) to identify gate locations that are compatible with existing development practices and 2) to begin gathering the input necessary for making a go/no-go decision. Importantly, at this stage the gates are not enforced. For example, the SSG can collect security testing results for each project prior to release, but it stops short of passing judgment on what constitutes sufficient testing or acceptable test results. Shorter release cycles, as are seen in organizations practicing CI/CD, often require creative approaches to collecting the right evidence and rely heavily on lightweight, super-fast automation. The idea of identifying gates first and only enforcing them later is extremely helpful in moving development toward software security without major pain. Socialize the gates, and only turn them on once most projects already know how to succeed. This gradual approach serves to motivate good behavior without requiring it.",
  level: 1,
  version: 8
)
a_sm21 = Activity.create(
  practice: p_sm,
  bsid: "SM2.1",
  title: "Publish data about software security internally.",
  descr: "The SSG publishes data internally on the state of software security within the organization to facilitate improvement. The information might come as a dashboard with metrics for executives and software development management. Sometimes, publication is not shared with everyone in a firm, but rather with the relevant executives only. In this case, publishing information up to executives who then drive change in the organization is necessary. In other cases, open book management and publishing data to all stakeholders helps everyone know what’s going on, with the philosophy that sunlight is the best disinfectant. If the organization’s culture promotes internal competition between groups, this information adds a security dimension to the game. The time compression associated with CI/CD calls for measurements that can be taken quickly and accurately, focusing less on historical trends (e.g., bugs per release) and more on speed (e.g., time to fix).",
  level: 2,
  version: 8
)
a_sm22 = Activity.create(
  practice: p_sm,
  bsid: "SM2.2",
  title: "Enforce gates with measurements and track exceptions.",
  descr: "SDLC security gates are now enforced for every software project: in order to pass a gate, a project must either meet an established measure or obtain a waiver. Even recalcitrant project teams must now play along. The SSG tracks exceptions. A gate could require a project to undergo code review and remediate any critical findings before release. In some cases, gates are directly associated with controls required by regulations, contractual agreements, and other business obligations, and exceptions are tracked as required by statutory or regulatory drivers. In other cases, gate measures yield key performance indicators that are used to govern the process. A revolving door or a rubber stamp exception process does not count. If some projects are automatically passed, that defeats the purpose of enforcing gates. Even seemingly innocuous development projects, such as a new mobile client for an existing back-end or porting an application to a cloud environment from an internal data center, must successfully pass the prescribed security gates in order to progress. Similarly, APIs, libraries, COTS, microservices, and so on are all software that must traverse the security gates.",
  level: 2,
  version: 8
)
a_sm23 = Activity.create(
  practice: p_sm,
  bsid: "SM2.3",
  title: "Create or grow a satellite.",
  descr: "The satellite begins as a collection of people scattered across the organization who show an above-average level of security interest or skill. Identifying this group is a step toward creating a social network that speeds the adoption of security into software development. One way to begin is to track the people who stand out during introductory training courses (see [T3.6 Identify satellite through training]). Another way is to ask for volunteers. In a more top-down approach, initial satellite membership is assigned to ensure complete coverage of all development/product groups. Ongoing membership should be based on actual performance. A strong satellite is a good sign of a mature software security initiative. In new or fast-moving technology areas such as mobile development, or development paradigms such as DevOps, satellite members can help combine software security skills with domain knowledge that might be underrepresented in the SSG. Agile coaches make particularly useful satellite members.",
  level: 2,
  version: 8
)
a_sm25 = Activity.create(
  practice: p_sm,
  bsid: "SM2.5",
  title: "Identify metrics and use them to drive budgets.",
  descr: "The SSG and its management choose the metrics that define and measure software security initiative progress. These metrics will drive the initiative’s budget and resource allocations, so simple counts and statistics won’t suffice. Metrics also allow the SSG to explain its goals and its progress in quantitative terms. One such metric could be security defect density. A reduction in security defect density could be used to show a decreasing cost of remediation over time. Recall that in agile methodologies, metrics are best collected early and often in a lightweight manner. The key here is to tie technical results to business objectives in a clear and obvious fashion in order to justify funding. Because the concept of security is already tenuous to many business people, making this explicit tie can be helpful.",
  level: 2,
  version: 8
)
a_sm26 = Activity.create(
  practice: p_sm,
  bsid: "SM2.6",
  title: "Require security sign-off.",
  descr: "The organization has an initiative-wide process for accepting security risk and documenting accountability. A risk acceptor signs off on the state of all software prior to release. For example, the sign-off policy might require the head of the business unit to sign off on critical vulnerabilities that have not been mitigated or SSDL steps that have been skipped. The policy must apply to outsourced projects, such as a boutique mobile application, and to projects that will be deployed in external environments, such as the cloud. Informal or uninformed risk acceptance alone does not count as security sign-off because the act of accepting risk is more effective when it is formalized (e.g., with a signature, form submission, or something similar) and captured for future reference. Similarly, simply stating that certain projects never need a sign-off does not achieve the desired results.",
  level: 2,
  version: 8
)
a_sm31 = Activity.create(
  practice: p_sm,
  bsid: "SM3.1",
  title: "Use an internal tracking application with portfolio view.",
  descr: "The SSG uses a centralized tracking application to chart the progress of every piece of software in its purview, regardless of development methodology. The application records the security activities scheduled, in progress, and completed. It incorporates results from activities such as architecture analysis, code review, and security testing even when they happen in a tight loop. The SSG uses the tracking application to generate portfolio reports for many of the metrics it uses. A combined inventory and risk posture view is fundamental. In many cases, these data are published at least among executives. Depending on the culture, this can cause interesting effects through internal competition. As an initiative matures and activities become more distributed, the SSG uses the centralized reporting system to keep track of all the moving parts.",
  level: 3,
  version: 8
)
a_sm32 = Activity.create(
  practice: p_sm,
  bsid: "SM3.2",
  title: "Run an external marketing program.",
  descr: "The SSG helps the firm market the software security initiative outside to build external support. Software security grows beyond being a risk reduction exercise and becomes a competitive advantage or market differentiator. The SSG might write papers or books about its SSDL. It might have a public blog. It might participate in external conferences or trade shows. In some cases, a complete SSDL methodology can be published and promoted externally. Mobile and cloud security projects can make great software security case studies. Sharing details externally and inviting critique can bring new perspectives into the firm.",
  level: 3,
  version: 8
)
# rubocop:enable LineLength

# BSIMM8 verticals

v_earth = Vertical.create(
  name: "Earth",
  numfirms: 109,
  version: 8
)
v_financial = Vertical.create(
  name: "Financial",
  numfirms: 47,
  version: 8
)
v_isv = Vertical.create(
  name: "ISV",
  numfirms: 38,
  version: 8
)
v_cloud = Vertical.create(
  name: "Cloud",
  numfirms: 16,
  version: 8
)
v_healthcare = Vertical.create(
  name: "Healthcare",
  numfirms: 17,
  version: 8
)
v_iot = Vertical.create(
  name: "IoT",
  numfirms: 12,
  version: 8
)
v_insurance = Vertical.create(
  name: "Insurance",
  numfirms: 11,
  version: 8
)

# BSIMM8 activity perform counts by vertical

ActivityVertical.create(activity: a_sm11, vertical: v_earth, count: 55, version: 8)
ActivityVertical.create(activity: a_sm12, vertical: v_earth, count: 56, version: 8)
ActivityVertical.create(activity: a_sm13, vertical: v_earth, count: 52, version: 8)
ActivityVertical.create(activity: a_sm14, vertical: v_earth, count: 92, version: 8)
ActivityVertical.create(activity: a_sm21, vertical: v_earth, count: 46, version: 8)
ActivityVertical.create(activity: a_sm22, vertical: v_earth, count: 36, version: 8)
ActivityVertical.create(activity: a_sm23, vertical: v_earth, count: 40, version: 8)
ActivityVertical.create(activity: a_sm25, vertical: v_earth, count: 21, version: 8)
ActivityVertical.create(activity: a_sm26, vertical: v_earth, count: 33, version: 8)
ActivityVertical.create(activity: a_sm31, vertical: v_earth, count: 15, version: 8)
ActivityVertical.create(activity: a_sm32, vertical: v_earth, count: 9, version: 8)

ActivityVertical.create(activity: a_sm11, vertical: v_financial, count: 30, version: 8)
ActivityVertical.create(activity: a_sm12, vertical: v_financial, count: 22, version: 8)
ActivityVertical.create(activity: a_sm13, vertical: v_financial, count: 25, version: 8)
ActivityVertical.create(activity: a_sm14, vertical: v_financial, count: 44, version: 8)
ActivityVertical.create(activity: a_sm21, vertical: v_financial, count: 24, version: 8)
ActivityVertical.create(activity: a_sm22, vertical: v_financial, count: 23, version: 8)
ActivityVertical.create(activity: a_sm23, vertical: v_financial, count: 15, version: 8)
ActivityVertical.create(activity: a_sm25, vertical: v_financial, count: 14, version: 8)
ActivityVertical.create(activity: a_sm26, vertical: v_financial, count: 21, version: 8)
ActivityVertical.create(activity: a_sm31, vertical: v_financial, count: 8, version: 8)
ActivityVertical.create(activity: a_sm32, vertical: v_financial, count: 1, version: 8)

ActivityVertical.create(activity: a_sm11, vertical: v_isv, count: 21, version: 8)
ActivityVertical.create(activity: a_sm12, vertical: v_isv, count: 25, version: 8)
ActivityVertical.create(activity: a_sm13, vertical: v_isv, count: 20, version: 8)
ActivityVertical.create(activity: a_sm14, vertical: v_isv, count: 32, version: 8)
ActivityVertical.create(activity: a_sm21, vertical: v_isv, count: 18, version: 8)
ActivityVertical.create(activity: a_sm22, vertical: v_isv, count: 11, version: 8)
ActivityVertical.create(activity: a_sm23, vertical: v_isv, count: 18, version: 8)
ActivityVertical.create(activity: a_sm25, vertical: v_isv, count: 5, version: 8)
ActivityVertical.create(activity: a_sm26, vertical: v_isv, count: 11, version: 8)
ActivityVertical.create(activity: a_sm31, vertical: v_isv, count: 5, version: 8)
ActivityVertical.create(activity: a_sm32, vertical: v_isv, count: 6, version: 8)

ActivityVertical.create(activity: a_sm11, vertical: v_cloud, count: 8, version: 8)
ActivityVertical.create(activity: a_sm12, vertical: v_cloud, count: 10, version: 8)
ActivityVertical.create(activity: a_sm13, vertical: v_cloud, count: 9, version: 8)
ActivityVertical.create(activity: a_sm14, vertical: v_cloud, count: 14, version: 8)
ActivityVertical.create(activity: a_sm21, vertical: v_cloud, count: 10, version: 8)
ActivityVertical.create(activity: a_sm22, vertical: v_cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_sm23, vertical: v_cloud, count: 8, version: 8)
ActivityVertical.create(activity: a_sm25, vertical: v_cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_sm26, vertical: v_cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_sm31, vertical: v_cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_sm32, vertical: v_cloud, count: 5, version: 8)

ActivityVertical.create(activity: a_sm11, vertical: v_healthcare, count: 7, version: 8)
ActivityVertical.create(activity: a_sm12, vertical: v_healthcare, count: 7, version: 8)
ActivityVertical.create(activity: a_sm13, vertical: v_healthcare, count: 7, version: 8)
ActivityVertical.create(activity: a_sm14, vertical: v_healthcare, count: 13, version: 8)
ActivityVertical.create(activity: a_sm21, vertical: v_healthcare, count: 4, version: 8)
ActivityVertical.create(activity: a_sm22, vertical: v_healthcare, count: 5, version: 8)
ActivityVertical.create(activity: a_sm23, vertical: v_healthcare, count: 8, version: 8)
ActivityVertical.create(activity: a_sm25, vertical: v_healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_sm26, vertical: v_healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_sm31, vertical: v_healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_sm32, vertical: v_healthcare, count: 1, version: 8)

ActivityVertical.create(activity: a_sm11, vertical: v_iot, count: 5, version: 8)
ActivityVertical.create(activity: a_sm12, vertical: v_iot, count: 9, version: 8)
ActivityVertical.create(activity: a_sm13, vertical: v_iot, count: 6, version: 8)
ActivityVertical.create(activity: a_sm14, vertical: v_iot, count: 8, version: 8)
ActivityVertical.create(activity: a_sm21, vertical: v_iot, count: 4, version: 8)
ActivityVertical.create(activity: a_sm22, vertical: v_iot, count: 2, version: 8)
ActivityVertical.create(activity: a_sm23, vertical: v_iot, count: 5, version: 8)
ActivityVertical.create(activity: a_sm25, vertical: v_iot, count: 2, version: 8)
ActivityVertical.create(activity: a_sm26, vertical: v_iot, count: 2, version: 8)
ActivityVertical.create(activity: a_sm31, vertical: v_iot, count: 1, version: 8)
ActivityVertical.create(activity: a_sm32, vertical: v_iot, count: 2, version: 8)

ActivityVertical.create(activity: a_sm11, vertical: v_insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_sm12, vertical: v_insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_sm13, vertical: v_insurance, count: 5, version: 8)
ActivityVertical.create(activity: a_sm14, vertical: v_insurance, count: 9, version: 8)
ActivityVertical.create(activity: a_sm21, vertical: v_insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_sm22, vertical: v_insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_sm23, vertical: v_insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_sm25, vertical: v_insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_sm26, vertical: v_insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_sm31, vertical: v_insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_sm32, vertical: v_insurance, count: 1, version: 8)
