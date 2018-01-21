v_Earth = Vertical.create(
  name: "Earth",
  numfirms: 109,
  version: 8
)
d_Governance = Domain.create(
  title: "Governance",
  descr: "Practices that help organize, manage, and measure a software security initiative",
  version: 8
)
p_SM = Practice.create(
  domain: d_Governance,
  title: "Strategy & Metrics",
  short: "SM",
  descr: "The Strategy & Metrics practice encompasses planning, assigning roles and responsibilities, identifying software security goals, determining budgets, and identifying metrics and gates.",
  version: 8
)
a_SM11 = Activity.create(
  practice: p_SM,
  bsid: "SM1.1",
  title: "Publish process (roles, responsibilities, plan), evolve as necessary.",
  descr: "The process for addressing software security is broadcast to all stakeholders so that everyone knows the plan. Goals, roles, responsibilities, and activities are explicitly defined. Most organizations pick and choose from a published methodology, such as the Microsoft SDL or the Synopsys Touchpoints, and then tailor the methodology to their needs. An SSDL process must be adapted to the specifics of the development process it governs (e.g., waterfall, agile, etc.) and evolves both with the organization and the security landscape. A process must be published to count. In many cases, the methodology is published only internally and is controlled by the SSG. The SSDL does not need to be publicly promoted outside of the firm to have the desired impact.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_SM11, vertical: v_Earth, count: 55, version: 8)
a_SM12 = Activity.create(
  practice: p_SM,
  bsid: "SM1.2",
  title: "Create evangelism role and perform internal marketing.",
  descr: "In order to build support for software security throughout the organization, someone in the SSG plays an evangelism role. This internal marketing function helps keep executives and all other stakeholders current on the magnitude of the software security problem and the elements of its solution. Evangelists might give talks for internal groups including executives, extend invitations to outside speakers, author white papers for internal consumption, or create a collection of papers, books, and other resources on an internal website and promote its use. A canonical example of such an evangelist was Michael Howard’s role at Microsoft just after the Gates memo. As another example, an agile coach familiar with security can help teams adopt better software security practices as they transform to an agile methodology.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_SM12, vertical: v_Earth, count: 56, version: 8)
a_SM13 = Activity.create(
  practice: p_SM,
  bsid: "SM1.3",
  title: "Educate executives.",
  descr: "Executives are periodically shown the consequences of inadequate software security and the negative business impact that poor security can have. They’re also shown what other organizations are doing to attain software security. By understanding both the problem and its proper resolution, executives come to support the software security initiative as a risk management necessity. In its most dangerous form, such education arrives courtesy of malicious hackers or public data exposure incidents. Preferably, the SSG demonstrates a worst-case scenario in a controlled environment with the permission of all involved (e.g., actually showing working exploits and their business impact). In some cases, presentation to the Board can help garner resources for an ongoing software security initiative. Bringing in an outside guru is often helpful when seeking to bolster executive attention. Tying education to specific development areas, such as mobile or cloud services, can help convince leadership to accept SSG recommendations where they might otherwise be ignored in favor of faster release dates or other priorities.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_SM13, vertical: v_Earth, count: 52, version: 8)
a_SM14 = Activity.create(
  practice: p_SM,
  bsid: "SM1.4",
  title: "Identify gate locations, gather necessary artifacts.",
  descr: "The software security process includes release gates/checkpoints/milestones at one or more points in the SDLC or, more likely, the SDLCs. The first two steps toward establishing security-specific release gates are 1) to identify gate locations that are compatible with existing development practices and 2) to begin gathering the input necessary for making a go/no-go decision. Importantly, at this stage the gates are not enforced. For example, the SSG can collect security testing results for each project prior to release, but it stops short of passing judgment on what constitutes sufficient testing or acceptable test results. Shorter release cycles, as are seen in organizations practicing CI/CD, often require creative approaches to collecting the right evidence and rely heavily on lightweight, super-fast automation. The idea of identifying gates first and only enforcing them later is extremely helpful in moving development toward software security without major pain. Socialize the gates, and only turn them on once most projects already know how to succeed. This gradual approach serves to motivate good behavior without requiring it.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_SM14, vertical: v_Earth, count: 92, version: 8)
a_SM21 = Activity.create(
  practice: p_SM,
  bsid: "SM2.1",
  title: "Publish data about software security internally.",
  descr: "The SSG publishes data internally on the state of software security within the organization to facilitate improvement. The information might come as a dashboard with metrics for executives and software development management. Sometimes, publication is not shared with everyone in a firm, but rather with the relevant executives only. In this case, publishing information up to executives who then drive change in the organization is necessary. In other cases, open book management and publishing data to all stakeholders helps everyone know what’s going on, with the philosophy that sunlight is the best disinfectant. If the organization’s culture promotes internal competition between groups, this information adds a security dimension to the game. The time compression associated with CI/CD calls for measurements that can be taken quickly and accurately, focusing less on historical trends (e.g., bugs per release) and more on speed (e.g., time to fix).",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SM21, vertical: v_Earth, count: 46, version: 8)
a_SM22 = Activity.create(
  practice: p_SM,
  bsid: "SM2.2",
  title: "Enforce gates with measurements and track exceptions.",
  descr: "SDLC security gates are now enforced for every software project: in order to pass a gate, a project must either meet an established measure or obtain a waiver. Even recalcitrant project teams must now play along. The SSG tracks exceptions. A gate could require a project to undergo code review and remediate any critical findings before release. In some cases, gates are directly associated with controls required by regulations, contractual agreements, and other business obligations, and exceptions are tracked as required by statutory or regulatory drivers. In other cases, gate measures yield key performance indicators that are used to govern the process. A revolving door or a rubber stamp exception process does not count. If some projects are automatically passed, that defeats the purpose of enforcing gates. Even seemingly innocuous development projects, such as a new mobile client for an existing back-end or porting an application to a cloud environment from an internal data center, must successfully pass the prescribed security gates in order to progress. Similarly, APIs, libraries, COTS, microservices, and so on are all software that must traverse the security gates.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SM22, vertical: v_Earth, count: 36, version: 8)
a_SM23 = Activity.create(
  practice: p_SM,
  bsid: "SM2.3",
  title: "Create or grow a satellite.",
  descr: "The satellite begins as a collection of people scattered across the organization who show an above-average level of security interest or skill. Identifying this group is a step toward creating a social network that speeds the adoption of security into software development. One way to begin is to track the people who stand out during introductory training courses (see [T3.6 Identify satellite through training]). Another way is to ask for volunteers. In a more top-down approach, initial satellite membership is assigned to ensure complete coverage of all development/product groups. Ongoing membership should be based on actual performance. A strong satellite is a good sign of a mature software security initiative. In new or fast-moving technology areas such as mobile development, or development paradigms such as DevOps, satellite members can help combine software security skills with domain knowledge that might be underrepresented in the SSG. Agile coaches make particularly useful satellite members.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SM23, vertical: v_Earth, count: 40, version: 8)
a_SM25 = Activity.create(
  practice: p_SM,
  bsid: "SM2.5",
  title: "Identify metrics and use them to drive budgets.",
  descr: "The SSG and its management choose the metrics that define and measure software security initiative progress. These metrics will drive the initiative’s budget and resource allocations, so simple counts and statistics won’t suffice. Metrics also allow the SSG to explain its goals and its progress in quantitative terms. One such metric could be security defect density. A reduction in security defect density could be used to show a decreasing cost of remediation over time. Recall that in agile methodologies, metrics are best collected early and often in a lightweight manner. The key here is to tie technical results to business objectives in a clear and obvious fashion in order to justify funding. Because the concept of security is already tenuous to many business people, making this explicit tie can be helpful.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SM25, vertical: v_Earth, count: 21, version: 8)
a_SM26 = Activity.create(
  practice: p_SM,
  bsid: "SM2.6",
  title: "Require security sign-off.",
  descr: "The organization has an initiative-wide process for accepting security risk and documenting accountability. A risk acceptor signs off on the state of all software prior to release. For example, the sign-off policy might require the head of the business unit to sign off on critical vulnerabilities that have not been mitigated or SSDL steps that have been skipped. The policy must apply to outsourced projects, such as a boutique mobile application, and to projects that will be deployed in external environments, such as the cloud. Informal or uninformed risk acceptance alone does not count as security sign-off because the act of accepting risk is more effective when it is formalized (e.g., with a signature, form submission, or something similar) and captured for future reference. Similarly, simply stating that certain projects never need a sign-off does not achieve the desired results.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SM26, vertical: v_Earth, count: 33, version: 8)
a_SM31 = Activity.create(
  practice: p_SM,
  bsid: "SM3.1",
  title: "Use an internal tracking application with portfolio view.",
  descr: "The SSG uses a centralized tracking application to chart the progress of every piece of software in its purview, regardless of development methodology. The application records the security activities scheduled, in progress, and completed. It incorporates results from activities such as architecture analysis, code review, and security testing even when they happen in a tight loop. The SSG uses the tracking application to generate portfolio reports for many of the metrics it uses. A combined inventory and risk posture view is fundamental. In many cases, these data are published at least among executives. Depending on the culture, this can cause interesting effects through internal competition. As an initiative matures and activities become more distributed, the SSG uses the centralized reporting system to keep track of all the moving parts.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_SM31, vertical: v_Earth, count: 15, version: 8)
a_SM32 = Activity.create(
  practice: p_SM,
  bsid: "SM3.2",
  title: "Run an external marketing program.",
  descr: "The SSG helps the firm market the software security initiative outside to build external support. Software security grows beyond being a risk reduction exercise and becomes a competitive advantage or market differentiator. The SSG might write papers or books about its SSDL. It might have a public blog. It might participate in external conferences or trade shows. In some cases, a complete SSDL methodology can be published and promoted externally. Mobile and cloud security projects can make great software security case studies. Sharing details externally and inviting critique can bring new perspectives into the firm.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_SM32, vertical: v_Earth, count: 9, version: 8)
p_CP = Practice.create(
  domain: d_Governance,
  title: "Compliance & Policy",
  short: "CP",
  descr: "The Compliance & Policy practice is focused on identifying controls for compliance regimens such as PCI DSS and HIPAA, developing contractual controls such as service-level agreements (SLAs) to help control COTS software risk, setting organizational software security policy, and auditing against that policy.",
  version: 8
)
a_CP11 = Activity.create(
  practice: p_CP,
  bsid: "CP1.1",
  title: "Unify regulatory pressures.",
  descr: "If the business or its customers are subject to regulatory or compliance drivers such as GDPR, FFIEC, GLBA, OCC, PCI DSS, SOX, HIPAA, or others, the SSG acts as a focal point for understanding the constraints such drivers impose on software. In some cases, the SSG creates a unified approach that removes redundancy and conflicts from overlapping compliance requirements. A formal approach will map applicable portions of regulations to control statements explaining how the organization complies. As an alternative, existing business processes run by legal or other risk and compliance groups outside the SSG could also serve as the regulatory focal point. Create one set of software security guidance so that compliance work is completed as efficiently as possible. Some firms move on to guide exposure by becoming directly involved in standards groups exploring new technologies in order to influence the regulatory environment.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_CP11, vertical: v_Earth, count: 66, version: 8)
a_CP12 = Activity.create(
  practice: p_CP,
  bsid: "CP1.2",
  title: "Identify PII obligations.",
  descr: "The way software handles personally identifiable information (PII) could be explicitly regulated, but even if it isn’t, privacy is a hot topic. The SSG plays a key role in identifying and describing PII obligations stemming from regulation and customer expectations. It uses this information to promote best practices related to privacy. For example, if the organization processes credit card transactions, the SSG will identify the constraints that the PCI DSS places on the handling of cardholder data and inform all stakeholders. Note that outsourcing to hosted environments (e.g., the cloud) does not relax PII obligations. Also note, firms that create software products that process PII (but who don’t necessarily handle PII directly) can get credit by providing privacy controls and guidance for their customers. Proliferation of Internet of Things and mobile devices add yet another dimension to PII protection.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_CP12, vertical: v_Earth, count: 89, version: 8)
a_CP13 = Activity.create(
  practice: p_CP,
  bsid: "CP1.3",
  title: "Create policy.",
  descr: "The SSG guides the rest of the organization by creating or contributing to software security policy that satisfies internal, regulatory, and customer-driven security requirements. The policy includes a unified approach for satisfying the (potentially lengthy) list of security drivers at the governance level. As a result, project teams can avoid keeping up with the details involved in complying with all applicable regulations. Likewise, project teams don’t need to relearn customer security requirements on their own. The SSG policy documents are sometimes focused around major compliance topics such as the handling of PII or the use of cryptography. In some cases, policy documents relate directly to the SSDL and its use in the firm. Because they’re so new, codifying decisions about IoT, cloud, and mobile architectures can add some much needed pizzazz to the policy discussion. Similarly, it may be necessary to explain what can and can’t be automated into CI/CD and continuous deployment pipelines. Architecture standards and coding guidelines are not examples of software security policy. On the other hand, policy that prescribes and mandates the use of coding guidelines and architecture standards for certain categories of applications does count. Policy is what is permitted and denied at the initiative level. If it’s not mandatory, it’s not policy.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_CP13, vertical: v_Earth, count: 56, version: 8)
a_CP21 = Activity.create(
  practice: p_CP,
  bsid: "CP2.1",
  title: "Identify PII data inventory.",
  descr: "The organization identifies the kinds of PII processed or stored by each of its systems and their data repositories, including mobile and cloud environments. A PII inventory can be approached in two ways: starting with each individual application by noting its PII use or starting with particular types of PII and the applications that touch them. In either case, an inventory of data repositories is required. Note that when applications are distributed across multiple deployment environments, PII inventory control can get tricky. Do not ignore it. When combined with the organization’s PII obligations, this inventory guides privacy planning. For example, the SSG can now create a list of databases that would require customer notification if breached.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_CP21, vertical: v_Earth, count: 27, version: 8)
a_CP22 = Activity.create(
  practice: p_CP,
  bsid: "CP2.2",
  title: "Require security sign-off for compliance-related risk.",
  descr: "The organization has a formal compliance risk acceptance and accountability process addressing all software development projects, regardless of development methodology. The SSG might act as an advisor when the risk acceptor signs off on the state of the software prior to release. For example, the sign-off policy might require the head of the business unit to sign off on compliance issues that have not been mitigated or SSDL steps related to compliance that have been skipped. Sign-off should be explicit and captured for future reference. Any exceptions should be tracked, even under the fastest of agile methodologies. An application without security defects might still be noncompliant.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_CP22, vertical: v_Earth, count: 37, version: 8)
a_CP23 = Activity.create(
  practice: p_CP,
  bsid: "CP2.3",
  title: "Implement and track controls for compliance.",
  descr: "The organization can demonstrate compliance with applicable regulations because its SSDL is aligned with the control statements developed by the SSG (see [CP1.1 Unify regulatory pressures]). The SSG tracks the controls, shepherds problem areas, and makes sure auditors and regulators are satisfied. If the organization’s SDLC is predictable and reliable, the SSG might be able to largely sit back and keep score. If the SDLC is uneven, less reliable, or in a huge hurry, the SSG could be forced to take a more active role as referee. A firm doing this properly can explicitly associate satisfying its compliance concerns with following its SSDL.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_CP23, vertical: v_Earth, count: 35, version: 8)
a_CP24 = Activity.create(
  practice: p_CP,
  bsid: "CP2.4",
  title: "Include software security SLAs in all vendor contracts.",
  descr: "Vendor contracts include an SLA ensuring that the vendor will not jeopardize the organization’s compliance story and software security initiative. This is particularly important when controlling cloud computing providers. Each new or renewed contract contains a set of provisions requiring the vendor to address software security and deliver a product or service compatible with the organization’s security policy (see [SR2.5 Create SLA boilerplate]). In some cases, open source licensing concerns initiate the vendor control process. That can open the door for further software security language in the SLA. Traditional IT security requirements and a simple agreement to allow penetration testing are not sufficient.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_CP24, vertical: v_Earth, count: 40, version: 8)
a_CP25 = Activity.create(
  practice: p_CP,
  bsid: "CP2.5",
  title: "Ensure executive awareness of compliance and privacy obligations.",
  descr: "The SSG gains executive buy-in around compliance and privacy activities. Executives are provided plain- language explanations of the organization’s compliance and privacy obligations, plus the potential consequences for failing to meet those obligations. For some organizations, explaining the direct cost and likely fallout from a data breach could be an effective way to broach the subject. For other organizations, having an outside expert address the Board works because some executives value outside perspective more than internal perspective. One sure sign of proper executive awareness is adequate allocation of resources to get the job done. Be aware that the light and heat typically following a breach will not last.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_CP25, vertical: v_Earth, count: 41, version: 8)
a_CP31 = Activity.create(
  practice: p_CP,
  bsid: "CP3.1",
  title: "Create a regulator compliance story.",
  descr: "The SSG has the information regulators want. A combination of written policy, controls documentation, and artifacts gathered through the SSDL gives the SSG the ability to demonstrate the organization’s compliance story without a fire drill for every audit or a piece of paper for every sprint. In some cases, regulators, auditors, and senior management are satisfied with the same kinds of reports, which may be generated directly from various tools.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_CP31, vertical: v_Earth, count: 22, version: 8)
a_CP32 = Activity.create(
  practice: p_CP,
  bsid: "CP3.2",
  title: "Impose policy on vendors.",
  descr: "Vendors are required to adhere to the same policies used internally. Vendors must submit evidence that their software security practices pass muster. This goes for cloud and mobile platform providers as well. Evidence could include results from code reviews or penetration tests. Vendors may also attest to the fact that they are carrying out certain SSDL processes. In some cases, a BSIMM score or a vBSIMM score is used to help ensure that vendors are complying with the firm’s policies.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_CP32, vertical: v_Earth, count: 14, version: 8)
a_CP33 = Activity.create(
  practice: p_CP,
  bsid: "CP3.3",
  title: "Drive feedback from SSDL data back to policy.",
  descr: "Information from the SSDL is routinely fed back into the policy creation process. Policies are improved to find defects earlier or prevent them from occurring in the first place. Blind spots are eliminated based on trends in SSDL failures. For example, inadequate architecture analysis, recurring vulnerabilities, ignored security gates, or choosing the wrong firm to carry out a penetration test can expose policy weakness. Likewise, policies that impose too much bureaucracy might need to be adjusted to fit agile methodologies. Over time, policies should become more practical and easier to carry out (see [SM1.1 Publish process (roles, responsibilities, plan), evolve as necessary]). Ultimately, policies align themselves with the SSDL data and enhance and improve a firm’s effectiveness.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_CP33, vertical: v_Earth, count: 5, version: 8)
p_T = Practice.create(
  domain: d_Governance,
  title: "Training",
  short: "T",
  descr: "Training has always played a critical role in software security because software developers and architects often start with very little security knowledge.",
  version: 8
)
a_T11 = Activity.create(
  practice: p_T,
  bsid: "T1.1",
  title: "Provide awareness training.",
  descr: "The SSG provides awareness training in order to promote a culture of software security throughout the organization. Training might be delivered by SSG members, by an outside firm, by the internal training organization, or through eLearning. Course content isn’t necessarily tailored for a specific audience. For example, all programmers, quality assurance engineers, and project managers could attend the same “Introduction to Software Security” course. This activity can be enhanced with a tailored approach to a course that addresses a firm’s culture explicitly. Generic introductory courses covering basic IT security and high-level software security concepts do not generate satisfactory results. Likewise, providing awareness training only to developers and not to other roles is also insufficient.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_T11, vertical: v_Earth, count: 73, version: 8)
a_T15 = Activity.create(
  practice: p_T,
  bsid: "T1.5",
  title: "Deliver role-specific advanced curriculum (tools, technology stacks, and bug parade).",
  descr: "Software security training goes beyond building awareness and enables trainees to incorporate security practices into their work. The training is tailored to the role of trainees; trainees get information about the tools, technology stacks, development methodologies, or kinds of bugs that are most relevant to them. An organization might offer four tracks for engineers: one for architects, one for Java developers, one for mobile developers, and a fourth for testers. Tool-specific training is also commonly observed in a curriculum. Don’t forget that training will be useful for many different roles in an organization, including QA, product management, executives, and others.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_T15, vertical: v_Earth, count: 31, version: 8)
a_T16 = Activity.create(
  practice: p_T,
  bsid: "T1.6",
  title: "Create and use material specific to company history.",
  descr: "In order to make a strong and lasting change in behavior, training includes material specific to the company’s history. When participants can see themselves in the problem, they are more likely to understand how the material is relevant to their work and to know when and how to apply what they have learned. One way to do this is to use noteworthy attacks on the company as examples in the training curriculum. Be wary of training that covers platforms not used by developers (Windows developers don’t care about old Unix problems) or examples of problems only relevant to languages no longer in common use (Java developers don’t need to understand buffer overflows in C). Stories from company history can help steer training in the right direction only if the stories are still relevant and not overly censored.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_T16, vertical: v_Earth, count: 22, version: 8)
a_T17 = Activity.create(
  practice: p_T,
  bsid: "T1.7",
  title: "Deliver on-demand individual training.",
  descr: "The organization lowers the burden on trainees and reduces the cost of delivering training by offering on-demand training for individuals across roles. The most obvious choice, eLearning, can be kept up to date through a subscription model. Online courses must be engaging and relevant to achieve their intended purpose. Of course, training that sits around on the shelf does nobody any good. Hot topics like mobile and cloud can attract more interest than wonky policy discussions. For developers, it is also possible to provide training directly through IDEs right at the time it’s needed. Remember that in some cases, building a new skill (such as code review) could be better suited for instructor-led training.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_T17, vertical: v_Earth, count: 44, version: 8)
a_T25 = Activity.create(
  practice: p_T,
  bsid: "T2.5",
  title: "Enhance satellite through training and events.",
  descr: "The SSG strengthens the social network by holding special events for the satellite. The satellite learns about advanced topics (e.g., the latest secure development techniques for building iOS applications) or hears from guest speakers. Offering pizza and beer doesn’t hurt. A standing conference call with voluntary attendance does not address this activity, which is as much about building camaraderie as it is about sharing knowledge or organizational efficiency. There’s no substitute for face-to-face meetings, even if they happen only once or twice a year.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_T25, vertical: v_Earth, count: 16, version: 8)
a_T26 = Activity.create(
  practice: p_T,
  bsid: "T2.6",
  title: "Include security resources in onboarding.",
  descr: "The process for bringing new hires into the engineering organization requires they complete a training module about software security. The generic new hire process covers things like picking a good password and making sure people don’t tail you into the building, but this can be enhanced to cover topics such as secure coding, the SSDL, and internal security resources. The objective is to ensure that new hires enhance the security culture. Turnover in engineering organizations is generally high. Although a generic onboarding module is useful, it does not take the place of a timely and more complete introductory software security course.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_T26, vertical: v_Earth, count: 18, version: 8)
a_T31 = Activity.create(
  practice: p_T,
  bsid: "T3.1",
  title: "Reward progression through curriculum (certification or HR).",
  descr: "Knowledge is its own reward, but progression through the security curriculum brings other benefits too. Developers, testers, and others see a career advantage in learning about security. The reward system can be formal and lead to a certification or official mark in the HR system, or it can be less formal and use motivators such as praise letters for the satellite written at annual review time. Involving a corporate training department and/or HR can make security’s impact on career progression more obvious, but the SSG should continue to monitor security knowledge in the firm and not cede complete control or oversight.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_T31, vertical: v_Earth, count: 3, version: 8)
a_T32 = Activity.create(
  practice: p_T,
  bsid: "T3.2",
  title: "Provide training for vendors or outsourced workers.",
  descr: "Spending time and effort helping suppliers get security right at the outset is easier than trying to determine what they screwed up later on, especially if the agile team has sprinted on to other projects. In the best case, outsourced workers receive the same training given to employees. Training individual contractors is much more natural than training entire outsource firms and is a reasonable way to start. Of course, it’s important to train everyone who works on your software, regardless of their employment status.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_T32, vertical: v_Earth, count: 6, version: 8)
a_T33 = Activity.create(
  practice: p_T,
  bsid: "T3.3",
  title: "Host external software security events.",
  descr: "The organization highlights its security culture as a differentiator by hosting security events featuring external speakers and content. Good examples of this are Microsoft’s BlueHat and Intel’s Security Conference. Employees benefit from hearing outside perspectives, especially related to fast-moving technology areas. The organization as a whole benefits from putting its security cred on display (see [SM3.2 Run an external marketing program]). Events open to just certain small groups will not result in the desired change.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_T33, vertical: v_Earth, count: 5, version: 8)
a_T34 = Activity.create(
  practice: p_T,
  bsid: "T3.4",
  title: "Require an annual refresher.",
  descr: "Everyone involved in the SSDL is required to take an annual software security refresher course. The refresher keeps the staff up to date on security and ensures the organization doesn’t lose focus due to turnover, evolving methodologies, or changing deployment models. The SSG might use half a day to give an update on the security landscape and explain changes to policies and standards. A refresher can be rolled out as part of a firm-wide security day or in concert with an internal security conference. A refresher course is useful only if it’s fresh.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_T34, vertical: v_Earth, count: 7, version: 8)
a_T35 = Activity.create(
  practice: p_T,
  bsid: "T3.5",
  title: "Establish SSG office hours.",
  descr: "The SSG offers help to any and all comers during an advertised lab period or regularly scheduled office hours. By acting as an informal resource for people who want to solve security problems, the SSG leverages teachable moments and emphasizes the carrot over the stick. Office hours might be held one afternoon per week in the office of a senior SSG member. Roving office hours are also a possibility, with visits to particular product or application groups slated by request.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_T35, vertical: v_Earth, count: 4, version: 8)
a_T36 = Activity.create(
  practice: p_T,
  bsid: "T3.6",
  title: "Identify a satellite through training.",
  descr: "The satellite begins as a collection of people scattered across the organization who show an above-average level of security interest or advanced knowledge of new tech stacks and development methodologies. Identifying this group proactively is a step toward creating a social network that speeds the adoption of security into software development. One way to begin is to track the people who stand out during training courses or office hours (see [SM2.3 Create or grow a satellite]). In general, a volunteer army may be easier to lead than one that is drafted.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_T36, vertical: v_Earth, count: 5, version: 8)
d_Intelligence = Domain.create(
  title: "Intelligence",
  descr: "Practices that result in collections of corporate knowledge used in carrying out software security activities throughout the organization",
  version: 8
)
p_AM = Practice.create(
  domain: d_Intelligence,
  title: "Attack Models",
  short: "AM",
  descr: "Attack Models capture information used to think like an attacker: threat modeling, abuse case development and refinement, data classification, and technology-specific attack patterns.",
  version: 8
)
a_AM12 = Activity.create(
  practice: p_AM,
  bsid: "AM1.2",
  title: "Create a data classification scheme and inventory.",
  descr: "The organization agrees upon a data classification scheme and uses the scheme to inventory its software according to the kinds of data the software handles, regardless of whether the software is on or off premise. This allows applications to be prioritized by their data classification. Many classification schemes are possible—one approach is to focus on PII. Depending on the scheme and the software involved, it could be easiest to first classify data repositories and then derive classifications for applications according to the repositories they use. Other approaches to the problem are possible. For example, data could be classified according to protection of intellectual property, impact of disclosure, exposure to attack, relevance to SOX, or geographic boundaries.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_AM12, vertical: v_Earth, count: 68, version: 8)
a_AM13 = Activity.create(
  practice: p_AM,
  bsid: "AM1.3",
  title: "Identify potential attackers.",
  descr: "The SSG identifies potential attackers in order to understand their motivations and capabilities. The outcome of this exercise could be a set of attacker profiles including generic sketches for categories of attackers and more detailed descriptions for noteworthy individuals. In some cases, a third-party vendor might be contracted to provide this information. Specific and contextual attacker information is almost always more useful than generic information copied from someone else’s list. A list that simply divides the world into insiders and outsiders won’t drive useful results.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_AM13, vertical: v_Earth, count: 36, version: 8)
a_AM15 = Activity.create(
  practice: p_AM,
  bsid: "AM1.5",
  title: "Gather and use attack intelligence.",
  descr: "The SSG stays ahead of the curve by learning about new types of attacks and vulnerabilities. The information comes from attending conferences and workshops, monitoring attacker forums, and reading relevant publications, mailing lists, and blogs. Make Sun Tzu proud by knowing your enemy; engage with the security researchers who are likely to cause you trouble. In many cases, a subscription to a commercial service provides a reasonable way of gathering basic attack intelligence. Regardless of its origin, attack information must be made actionable and useful for software builders and testers.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_AM15, vertical: v_Earth, count: 50, version: 8)
a_AM21 = Activity.create(
  practice: p_AM,
  bsid: "AM2.1",
  title: "Build attack patterns and abuse cases tied to potential attackers.",
  descr: "The SSG prepares for security testing and architecture analysis by building attack patterns and abuse cases tied to potential attackers (see [AM1.3 Identify potential attackers]). These resources don’t have to be built from scratch for every application to be useful. Instead, there could be standard sets for applications with similar profiles. The SSG will add to the pile based on attack stories. For example, a story about an attack against poorly designed mobile application could lead to a mobile security attack pattern that drives a new type of testing. If a firm tracks fraud and monetary costs associated with particular attacks, this information can be used to prioritize the process of building attack patterns and abuse cases.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_AM21, vertical: v_Earth, count: 9, version: 8)
a_AM22 = Activity.create(
  practice: p_AM,
  bsid: "AM2.2",
  title: "Create technology-specific attack patterns.",
  descr: "The SSG creates technology-specific attack patterns to capture knowledge about attacks that target particular technologies. For example, if the organization’s cloud software relies on the cloud vendor’s security apparatus (e.g., cryptography), the SSG could catalogue the quirks of the crypto package and how it might be exploited. Attack patterns directly related to the security frontier (e.g., mobile security and wearable computing) can be useful. Simply republishing general guidelines (e.g., “Ensure data are protected in transit”) and adding “for mobile applications” on the end does not constitute technology-specific attack patterns.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_AM22, vertical: v_Earth, count: 8, version: 8)
a_AM25 = Activity.create(
  practice: p_AM,
  bsid: "AM2.5",
  title: "Build and maintain a top N possible attacks list.",
  descr: "The SSG helps the organization understand attack basics by maintaining a living list of attacks most important to the firm and using it to drive change. This list combines input from multiple sources: observed attacks, hacker forums, industry trends, etc. The list does not need to be updated with great frequency, and the attacks can be sorted in a coarse fashion. For example, the SSG might brainstorm twice per year to create lists of attacks the organization should be prepared to counter “now,” “soon,” and “someday.” In some cases, attack model information is used in a list-based approach to architecture analysis, helping to focus the analysis as in the case of STRIDE. Don’t just build the list; use it.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_AM25, vertical: v_Earth, count: 14, version: 8)
a_AM26 = Activity.create(
  practice: p_AM,
  bsid: "AM2.6",
  title: "Collect and publish attack stories.",
  descr: "To maximize the benefit from lessons that don’t always come cheap, the SSG collects and publishes stories about attacks against the organization. Over time, this collection helps the organization understand its history. Both successful and unsuccessful attacks can be noteworthy. Discussing historical information about software attacks has the effect of grounding software security in the reality of a firm. This is particularly useful in training classes to counter a generic approach over-focused on top 10 lists or irrelevant and outdated platform attacks (see [T1.6 Create and use material specific to company history]). Hiding information about attacks from people building new systems does nothing to garner positive benefit from a negative happenstance.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_AM26, vertical: v_Earth, count: 14, version: 8)
a_AM27 = Activity.create(
  practice: p_AM,
  bsid: "AM2.7",
  title: "Build an internal forum to discuss attacks.",
  descr: "The organization has an internal forum where the SSG, the satellite, and others discuss attacks and attack methods. The forum serves to communicate the attacker perspective. The SSG could maintain an internal mailing list where subscribers discuss the latest information on publicly known incidents. Dissection of attacks and exploits that are relevant to a firm are particularly helpful when they spur discussion of development mitigations. Simply republishing items from public mailing lists doesn’t achieve the same benefits as active discussion, nor does a closed discussion hidden from those actually creating code. Everyone should feel free to ask questions and learn about vulnerabilities and exploits. Vigilance means never getting too comfortable (see [SR1.2 Create a security portal]).",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_AM27, vertical: v_Earth, count: 10, version: 8)
a_AM31 = Activity.create(
  practice: p_AM,
  bsid: "AM3.1",
  title: "Have a science team that develops new attack methods.",
  descr: "The SSG has a science team that works to identify and defang new classes of attacks before real attackers even know they exist. Because the security implications of new technologies have not been fully explored in the wild, doing it yourself is sometimes the best way forward. This isn’t a penetration testing team finding new instances of known types of weaknesses—it’s a research group innovating new types of attacks. A science team may include well-known security researchers who publish their findings at conferences like DEF CON.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_AM31, vertical: v_Earth, count: 4, version: 8)
a_AM32 = Activity.create(
  practice: p_AM,
  bsid: "AM3.2",
  title: "Create and use automation to mimic attackers.",
  descr: "The SSG arms testers and auditors with automation to mimic what attackers are going to do. For example, a new attack method identified by the science team could require a new tool. The SSG packages the new tool and distributes it to testers. The idea here is to push attack capability past what typical commercial tools and offerings encompass and then package that information for others to use. Tailoring these new tools to a firm’s particular technology stacks and potential attackers is a really good idea.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_AM32, vertical: v_Earth, count: 1, version: 8)
p_SFD = Practice.create(
  domain: d_Intelligence,
  title: "Security Features & Design",
  short: "SFD",
  descr: "The Security Features & Design practice is charged with creating usable security patterns for major security controls (meeting the standards defined in the Standards & Requirements practice), building middleware frameworks for those controls, and creating and publishing other proactive security guidance.",
  version: 8
)
a_SFD11 = Activity.create(
  practice: p_SFD,
  bsid: "SFD1.1",
  title: "Build and publish security features.",
  descr: "Some problems are best solved only once. Rather than have each project team implement all of their own security features (e.g., authentication, role management, key management, audit/log, cryptography, protocols), the SSG provides proactive guidance by building and publishing security features for other groups to use. Generic security features often have to be tailored for specific platforms, such as mobile. For example, a mobile crypto feature will need at least two versions to cover Android and iOS if it uses low-level system calls. Project teams benefit from implementations that come pre-approved by the SSG and the SSG benefits by not having to repeatedly track down the kinds of subtle errors that often creep into security features. The SSG can identify an implementation they like and promote it as the accepted solution.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_SFD11, vertical: v_Earth, count: 85, version: 8)
a_SFD12 = Activity.create(
  practice: p_SFD,
  bsid: "SFD1.2",
  title: "Engage SSG with architecture.",
  descr: "Security is a regular part of the organization’s software architecture discussion. The architecture group takes responsibility for security the same way they take responsibility for performance, availability, or scalability. One way to keep security from falling out of the discussion is to have an SSG member attend regular architecture meetings. In other cases, enterprise architecture can help the SSG create secure designs that integrate properly into corporate design standards. Proactive engagement by the SSG is key to success. Moving a well-known system to the Cloud means re-engaging the SSG. Assume nothing.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_SFD12, vertical: v_Earth, count: 70, version: 8)
a_SFD21 = Activity.create(
  practice: p_SFD,
  bsid: "SFD2.1",
  title: "Build secure-by-design middleware frameworks and common libraries.",
  descr: "The SSG takes a proactive role in software design by building or providing pointers to secure-by-design middleware frameworks or common libraries. In addition to teaching by example, this middleware aids architecture analysis and code review because the building blocks make it easier to spot errors. For example, the SSG could modify a popular web framework, such as Spring, to make it easy to meet input validation requirements. Eventually the SSG can tailor code review rules specifically for the components it offers (see [CR3.1 Use automated tools with tailored rules]). When adopting a middleware framework (or any other widely used software), careful vetting for security before publication is important. Encouraging adoption and use of insecure middleware does not help the software security situation. Generic open source software security architectures, including OWASP ESAPI, should not be considered secure by design. Bolting security on at the end by calling a library is not the way to approach secure design.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SFD21, vertical: v_Earth, count: 29, version: 8)
a_SFD22 = Activity.create(
  practice: p_SFD,
  bsid: "SFD 2.2",
  title: "Create SSG capability to solve difficult design problems.",
  descr: "When the SSG is involved early in the new project process, it contributes to new architecture and solves difficult design problems. The negative impact security has on other constraints (time to market, price, etc.) is minimized. If a skilled security architect from the SSG is involved in the design of a new protocol, he or she could analyze the security implications of existing protocols and identify elements that should be duplicated or avoided. Likewise, having a security architect understand the security implications of moving a seemingly well-understood application to the cloud saves lots of headaches later. Designing for security up front is more efficient than analyzing an existing design for security and then refactoring when flaws are uncovered. Some design problems will require specific expertise outside of the SSG.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SFD22, vertical: v_Earth, count: 41, version: 8)
a_SFD31 = Activity.create(
  practice: p_SFD,
  bsid: "SFD3.1",
  title: "Form a review board or central committee to approve and maintain secure design patterns.",
  descr: "A review board or central committee formalizes the process for reaching consensus on design needs and security tradeoffs. Unlike the architecture committee, this group is specifically focused on providing security guidance. The group also periodically reviews already-published design standards (especially around cryptography) to ensure that design decisions do not become stale or out of date. A review board can also reign in the chaos often associated with the adoption of new technologies where development groups might otherwise head out into the jungle on their own without ever engaging the SSG.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_SFD31, vertical: v_Earth, count: 5, version: 8)
a_SFD32 = Activity.create(
  practice: p_SFD,
  bsid: "SFD3.2",
  title: "Require use of approved security features and frameworks.",
  descr: "Implementers must take their security features and frameworks from an approved list. There are two benefits: developers do not spend time re-inventing existing capabilities and review teams do not have to contend with finding the same old defects in brand new projects or when new platforms are adopted. In particular, the more a project uses proven components, the easier architecture analysis and code review become (see [AA1.1 Perform security feature review]). Re-use is a major advantage of consistent software architecture and is particularly helpful for agile development.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_SFD32, vertical: v_Earth, count: 11, version: 8)
a_SFD33 = Activity.create(
  practice: p_SFD,
  bsid: "SFD3.3",
  title: "Find and publish mature design patterns from the organization.",
  descr: "The SSG fosters centralized design reuse by collecting design patterns from across the organization and publishing them for everyone to use. A section of the SSG website could promote positive elements identified during architecture analysis so that good ideas are spread. This process should be formalized. An ad hoc, accidental noticing is not sufficient. In some cases, a central architecture or technology team facilitates and enhances this activity. Common design patterns make building software faster. Use secure design patterns for all of your software, not just applications; this includes microservices, APIs, frameworks, infrastructure, and automation.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_SFD33, vertical: v_Earth, count: 2, version: 8)
p_SR = Practice.create(
  domain: d_Intelligence,
  title: "Standards & Requirements",
  short: "SR",
  descr: "The Standards & Requirements practice involves eliciting explicit security requirements from the organization, determining which COTS to recommend, building standards for major security controls (such as authentication, input validation, and so on), creating security standards for technologies in use, and creating a standards review board.",
  version: 8
)
a_SR11 = Activity.create(
  practice: p_SR,
  bsid: "SR1.1",
  title: "Create security standards.",
  descr: "Software security requires much more than security features, but security features are part of the job as well. The SSG meets the organization’s demand for security guidance by creating standards that explain the accepted way to adhere to policy and carry out specific security-centric operations. A standard might describe how to perform authentication on an Android device or how to determine the authenticity of a software update (see [SFD1.1 Build and publish security features] for one case where the SSG provides a reference implementation of a security standard). Often, software that is not an application requires its own standard. Standards can be deployed in a variety of ways. In some cases, standards and guidelines can be automated in development environments (e.g., worked into an IDE). In other cases, guidance can be explicitly linked to code examples or even containers to make them more actionable and relevant. Standards that are not widely adopted and enforced are not really standards.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_SR11, vertical: v_Earth, count: 66, version: 8)
a_SR12 = Activity.create(
  practice: p_SR,
  bsid: "SR1.2",
  title: "Create a security portal.",
  descr: "The organization has a well-known central location for information about software security. Typically, this is an internal website maintained by the SSG. People refer to the site for the latest and greatest on security standards and requirements as well as other resources provided by the SSG (e.g., training). An interactive wiki is better than a static portal with guideline documents that rarely change. Organizations can supplement these materials with mailing lists and face-to-face meetings.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_SR12, vertical: v_Earth, count: 69, version: 8)
a_SR13 = Activity.create(
  practice: p_SR,
  bsid: "SR1.3",
  title: "Translate compliance constraints to requirements.",
  descr: "Compliance constraints are translated into software requirements for individual projects. This is a linchpin in the organization’s compliance strategy—by representing compliance constraints explicitly with requirements, demonstrating compliance becomes a manageable task. For example, if the organization routinely builds software that processes credit card transactions, PCI DSS compliance could play a role in the SSDL during the requirements phase. In other cases, technology standards built for international interoperability reasons can include security guidance. Representing these standards as requirements helps with traceability and visibility in the event of an audit. It’s particularly useful to codify the requirements in reusable code or containers.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_SR13, vertical: v_Earth, count: 71, version: 8)
a_SR22 = Activity.create(
  practice: p_SR,
  bsid: "SR2.2",
  title: "Create a standards review board.",
  descr: "The organization creates a standards review board to formalize the process used to develop standards and ensure that all stakeholders have a chance to weigh in. The review board could operate by appointing a champion for any proposed standard. The onus is on the champion to demonstrate that the standard meets its goals and to get approval and buy-in from the review board. Enterprise architecture or enterprise risk groups sometimes take on the responsibility of creating and managing standards review boards.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SR22, vertical: v_Earth, count: 33, version: 8)
a_SR23 = Activity.create(
  practice: p_SR,
  bsid: "SR2.3",
  title: "Create standards for technology stacks.",
  descr: "The organization standardizes on specific technology stacks. For the SSG, this means a reduced workload because the group does not have to explore new technology risks for every new project. Ideally, the organization will create a secure base configuration for each technology stack, further reducing the amount of work required to use the stack safely. A stack might include an operating system, a database, an application server, and a runtime environment for a managed language. The security frontier is a good place to find traction. Currently, mobile technology stacks and platforms as well as cloud-based technology stacks are two areas where specific attention to security pays off.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SR23, vertical: v_Earth, count: 25, version: 8)
a_SR24 = Activity.create(
  practice: p_SR,
  bsid: "SR2.4",
  title: "Identify open source.",
  descr: "The first step toward managing risk introduced by open source is to identify the open source components in use across the portfolio and really understand which dependencies they drag on stage. It’s not uncommon to discover old versions of components with known vulnerabilities or multiple versions of the same component. Automated tools for finding open source, whether whole components or large chunks of borrowed code, are one way to approach this activity. An informal annual review or a process that relies solely on developers asking for permission does not generate satisfactory results. At the next level of maturity, this activity is subsumed by a policy constraining the use of open source.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SR24, vertical: v_Earth, count: 25, version: 8)
a_SR25 = Activity.create(
  practice: p_SR,
  bsid: "SR2.5",
  title: "Create SLA boilerplate.",
  descr: "The SSG works with the legal department to create a standard SLA boilerplate that is used in contracts with vendors and outsource providers to require software security efforts. This includes cloud providers. The legal department understands that the boilerplate also helps prevent compliance and privacy problems. Under the agreement, vendors and outsource providers must meet company software security standards (see [CP2.4 Paper all vendor contracts with software security SLAs]). Boilerplate language might call out software security vendor control solutions, such as vBSIMM measurements or BSIMM scores.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SR25, vertical: v_Earth, count: 26, version: 8)
a_SR26 = Activity.create(
  practice: p_SR,
  bsid: "SR2.6",
  title: "Use secure coding standards.",
  descr: "Secure coding standards help developers avoid the most obvious bugs and provide ground rules for code review. Secure coding standards are necessarily specific to a programming language or platform, and they can address the use of popular frameworks and libraries. Mobile platforms need their own specific coding standards. If the organization already has coding standards for other purposes, the secure coding standards should build upon them. A clear set of secure coding standards is a good way to guide both manual and automated code review, as well as beefing up security training with relevant examples. Remember, guidance does not a standard make.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SR26, vertical: v_Earth, count: 15, version: 8)
a_SR31 = Activity.create(
  practice: p_SR,
  bsid: "SR3.1",
  title: "Control open source risk.",
  descr: "The organization has control over its exposure to the vulnerabilities that come along with using open source components and their army of dependencies. Use of open source could be restricted to predefined projects. It could also be restricted to open source versions that have been through an SSG security screening process, had unacceptable vulnerabilities remediated, and are made available only through internal repositories. Legal often spearheads additional open source controls due to the “viral” license problem associated with GPL code. Getting Legal to understand security risks can help move an organization to improve its open source practices. Of course, this control must be applied across the software portfolio.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_SR31, vertical: v_Earth, count: 10, version: 8)
a_SR32 = Activity.create(
  practice: p_SR,
  bsid: "SR3.2",
  title: "Communicate standards to vendors.",
  descr: "The SSG works with vendors to educate them and promote the organization’s security standards. A healthy relationship with a vendor cannot be guaranteed through contract language alone. The SSG engages with vendors, discusses the vendor’s security practices, and explains in concrete terms (rather than legalese) what the organization expects of the vendor. Any time a vendor adopts the organization’s security standards, it’s a clear win. When a firm’s SSDL is available publically, communication regarding software security expectations is easier. Likewise, sharing internal practices and measures can make expectations clear.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_SR32, vertical: v_Earth, count: 9, version: 8)
d_SSDLTouchpoints = Domain.create(
  title: "SSDL Touchpoints",
  descr: "Practices associated with analysis and assurance of particular software development artifacts and processes",
  version: 8
)
p_AA = Practice.create(
  domain: d_SSDLTouchpoints,
  title: "Architecture Analysis",
  short: "AA",
  descr: "Architecture Analysis encompasses capturing software architecture in concise diagrams, applying lists of risks and threats, adopting a process for review (such as STRIDE or Architectural Risk Analysis), and building an assessment and remediation plan for the organization.",
  version: 8
)
a_AA11 = Activity.create(
  practice: p_AA,
  bsid: "AA1.1",
  title: "Perform security feature review.",
  descr: "To get started in architecture analysis, center the process on a review of security features. Security-aware reviewers first identify the security features in an application (authentication, access control, use of cryptography, etc.) and then study the design looking for problems that would cause these features to fail at their purpose or otherwise prove insufficient. For example, a system that was subject to escalation of privilege attacks because of broken access control or a mobile application that stashed away PII on local storage would both be identified in this kind of review. At higher levels of maturity, the activity of reviewing features is eclipsed by a more thorough approach to architecture analysis. In some cases, use of the firm’s secure-by- design components can streamline this process.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_AA11, vertical: v_Earth, count: 90, version: 8)
a_AA12 = Activity.create(
  practice: p_AA,
  bsid: "AA1.2",
  title: "Perform design review for high-risk applications.",
  descr: "The organization learns about the benefits of architecture analysis by seeing real results for a few high-risk, high- profile applications. The reviewers must have some experience performing detailed design review and breaking the architecture being considered, especially for new platforms or environments. In all cases, design review produces a set of architecture flaws and a plan to mitigate them. If the SSG is not yet equipped to perform an in-depth architecture analysis, it uses consultants to do this work. Ad hoc review paradigms that rely heavily on expertise can be used here, although they do not scale in the long run. A review focused only on whether a software project has performed the right process steps will not generate expected results.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_AA12, vertical: v_Earth, count: 30, version: 8)
a_AA13 = Activity.create(
  practice: p_AA,
  bsid: "AA1.3",
  title: "Have SSG lead design review efforts.",
  descr: "The SSG takes a lead role in architecture analysis by performing a design review to build the organization’s ability to uncover design flaws. Breaking down an architecture is enough of an art that the SSG must be proficient at it before they can turn the job over to the architects, and proficiency requires practice. The SSG cannot be successful on its own either—it’s likely they’ll need help from architects or implementers to understand the design. With a clear design in hand, the SSG might carry out the detailed review with a minimum of interaction with the project team. At higher levels of maturity, the responsibility for leading review efforts shifts toward software architects. Approaches to architecture analysis (and threat modeling) evolve over time. Do not expect to set a process and use it forever.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_AA13, vertical: v_Earth, count: 24, version: 8)
a_AA14 = Activity.create(
  practice: p_AA,
  bsid: "AA1.4",
  title: "Use a risk questionnaire to rank applications.",
  descr: "To facilitate security feature and design review processes, the SSG uses a risk questionnaire to collect basic information about each application so that it can determine a risk classification and prioritization scheme. Questions might include, “Which programming languages is the application written in?”, “Who uses the application?”, and “Does the application have a mobile client?” A qualified member of the application team completes the questionnaire. The questionnaire should be short enough that it can be completed in a matter of hours. The SSG might use the answers to categorize the application as high, medium, or low risk. Because a risk questionnaire can be easy to game, it’s important to put into place some spot checking for validity and accuracy. An overreliance on self-reporting or automation can render this activity impotent.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_AA14, vertical: v_Earth, count: 49, version: 8)
a_AA21 = Activity.create(
  practice: p_AA,
  bsid: "AA2.1",
  title: "Define and use AA process.",
  descr: "The SSG defines and documents a process for architecture analysis and applies it in the design reviews it conducts to find flaws. The process includes a standardized approach for thinking about attacks, security properties, and the associated risk. The process is defined rigorously enough that people outside the SSG can be taught to carry it out. Particular attention should be paid to documentation of both the architecture under review and any security flaws uncovered. Tribal knowledge doesn’t count as a defined process. Microsoft’s STRIDE and Synopsys’ ARA are examples of this process. Note that even these two methodologies for architecture analysis have evolved greatly over time. Make sure to access up-to-date sources for architecture analysis information because many early publications are outdated and no longer apply.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_AA21, vertical: v_Earth, count: 14, version: 8)
a_AA22 = Activity.create(
  practice: p_AA,
  bsid: "AA2.2",
  title: "Standardize architectural descriptions (including data flow).",
  descr: "Defined AA processes (see [AA2.1 Define and use AA process]) use an agreed-upon format for describing architecture, including a means for representing data flow. This format, combined with an architecture analysis process, makes architecture analysis tractable for people who are not security experts. In the case of cloud applications, data is likely to flow across the Internet. A network diagram is useful in this case, but the description should go into detail about how the software itself is structured. A standard architecture description can be enhanced to provide an explicit picture of information assets that require protection. Standardized icons that are consistently used in UML diagrams, Visio templates, and whiteboard squiggles are especially useful.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_AA22, vertical: v_Earth, count: 12, version: 8)
a_AA31 = Activity.create(
  practice: p_AA,
  bsid: "AA3.1",
  title: "Have software architects lead design review efforts.",
  descr: "Software architects throughout the organization lead the architecture analysis process most of the time. The SSG still might contribute to architecture analysis in an advisory capacity or under special circumstances. This activity requires a well-understood and well-documented architecture analysis process (see [AA2.1 Define and use AA process]). Even in that case, consistency is difficult to attain because breaking architectures requires so much experience.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_AA31, vertical: v_Earth, count: 2, version: 8)
a_AA32 = Activity.create(
  practice: p_AA,
  bsid: "AA3.2",
  title: "Drive analysis results into standard architecture patterns.",
  descr: "Failures identified during architecture analysis are fed back to the security design committee so that similar mistakes can be prevented in the future through improved design patterns (see [SFD3.1 Form a review board or central committee to approve and maintain secure design patterns]). Security design patterns can interact in surprising ways that break security. The architecture analysis process should be applied even when vetted design patterns are in standard use.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_AA32, vertical: v_Earth, count: 0, version: 8)
a_AA33 = Activity.create(
  practice: p_AA,
  bsid: "AA3.3",
  title: "Make the SSG available as an AA resource or mentor.",
  descr: "To build an architecture analysis capability outside of the SSG, the SSG advertises itself as a resource or mentor for teams who ask for help using the AA process (see [AA2.1 Define and use AA process]) to conduct their own design review. The SSG will answer architecture analysis questions during office hours and, in some cases, might assign someone to sit with the architect for the duration of the analysis. In the case of high-risk software, the SSG plays a more active mentorship role in applying the AA process.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_AA33, vertical: v_Earth, count: 2, version: 8)
p_CR = Practice.create(
  domain: d_SSDLTouchpoints,
  title: "Code Review",
  short: "CR",
  descr: "The Code Review practice includes use of code review tools, development of tailored rules, customized profiles for tool use by different roles (for example, developers versus auditors), manual analysis, and tracking/measuring results.",
  version: 8
)
a_CR12 = Activity.create(
  practice: p_CR,
  bsid: "CR1.2",
  title: "Have SSG perform ad hoc review.",
  descr: "The SSG performs an ad hoc code review for high-risk applications in an opportunistic fashion. For example, the SSG might follow up the design review for high-risk applications with a code review. At higher maturity levels, replace ad hoc targeting with a systematic approach. SSG review could involve the use of specific tools and services, or it might be manual, but it has to be proactive. When new technologies pop up, new approaches to code review might become necessary. An ad hoc exploration is okay.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_CR12, vertical: v_Earth, count: 69, version: 8)
a_CR14 = Activity.create(
  practice: p_CR,
  bsid: "CR1.4",
  title: "Use automated tools along with manual review.",
  descr: "Incorporate static analysis into the code review process to make code review more efficient and more consistent. The automation doesn’t replace human judgment, but it does bring definition to the review process and security expertise to reviewers who are not security experts. Note that a specific tool might not cover your entire portfolio, especially when new languages are involved, but that’s no excuse not to review your code. A firm may use an external service vendor as part of a formal code review process for software security. This service should be explicitly connected to a larger SSDL applied during software development and not just used to “check the security box” on the path to deployment.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_CR14, vertical: v_Earth, count: 65, version: 8)
a_CR15 = Activity.create(
  practice: p_CR,
  bsid: "CR1.5",
  title: "Make code review mandatory for all projects.",
  descr: "Code review is a mandatory release gate for all projects under the SSG’s purview. Lack of code review or unacceptable results will stop a release or slow it down. While all projects must undergo code review, the review process might be different for different kinds of projects. The review for low-risk projects might rely more heavily on automation, whereas high-risk projects might have no upper bound on the amount of time spent by reviewers. In most cases, a code review gate with a minimum acceptable standard forces projects that don’t pass to be fixed and reevaluated before they ship. A code review tool with nearly all the rules turned off so it can run at SDLC automation speeds won’t provide sufficient defect coverage.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_CR15, vertical: v_Earth, count: 34, version: 8)
a_CR16 = Activity.create(
  practice: p_CR,
  bsid: "CR1.6",
  title: "Use centralized reporting to close the knowledge loop and drive training.",
  descr: "The bugs found during code review are tracked in a centralized repository. This repository makes it possible to do summary reporting and trend reporting for the organization. The SSG can use the reports to demonstrate progress and drive the training curriculum (see [SM2.5 Identify metrics and use them to drive budgets]). Code review information can be incorporated into a CISO-level dashboard that includes feeds from other parts of the security organization. Likewise, code review information can be fed into a development-wide project tracking system that rolls up several diverse software security feeds (e.g., penetration tests, security testing, black-box testing, and white-box testing). Don’t forget that individual bugs make excellent training examples.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_CR16, vertical: v_Earth, count: 37, version: 8)
a_CR25 = Activity.create(
  practice: p_CR,
  bsid: "CR2.5",
  title: "Assign tool mentors.",
  descr: "Mentors are available to show developers how to get the most out of code review tools. If the SSG is most skilled with the tools, it could use office hours to help developers establish the right configuration or get started interpreting results. Alternatively, someone from the SSG might work with a development team for the duration of the first review they perform. Centralized use of a tool can be distributed into the development organization over time through the use of tool mentors. Providing installation instructions and URLs to centralized tools does not count as mentoring.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_CR25, vertical: v_Earth, count: 26, version: 8)
a_CR26 = Activity.create(
  practice: p_CR,
  bsid: "CR2.6",
  title: "Use automated tools with tailored rules.",
  descr: "Customize static analysis to improve efficiency and reduce false positives. Use custom rules to find errors specific to the organization’s coding standards or custom middleware. Turn off checks that aren’t relevant. The same group that provides tool mentoring will likely spearhead the customization. Tailored rules can be explicitly tied to proper usage of technology stacks in a positive sense and avoidance of errors commonly encountered in a firm’s code base in a negative sense.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_CR26, vertical: v_Earth, count: 16, version: 8)
a_CR27 = Activity.create(
  practice: p_CR,
  bsid: "CR2.7",
  title: "Use a top N bugs list (real data preferred).",
  descr: "The SSG maintains a list of the most important kinds of bugs that it wants to eliminate from the organization’s code and uses it to drive change. The list helps focus the organization’s attention on the bugs that matter most. It’s okay to start with a generic list pulled from public sources, but a list is much more valuable if it’s specific to the organization and built from real data gathered from code review, testing, and actual incidents. The SSG can periodically update the list and publish a “most wanted” report. (For another way to use the list, see [T1.6 Create and use material specific to company history]). Some firms use multiple tools and real code base data to build top N lists, not constraining themselves to a particular service or tool. One potential pitfall with a top N list is the problem of “looking for your keys only under the street light”—that is, it only includes known problems. For example, the OWASP Top 10 list rarely reflects an organization’s bug priorities. Simply sorting the day’s bug data by number of occurrences doesn’t produce a satisfactory top N list because these data change so often. If you make a top N bugs list, make sure you use it to kill bugs.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_CR27, vertical: v_Earth, count: 23, version: 8)
a_CR32 = Activity.create(
  practice: p_CR,
  bsid: "CR3.2",
  title: "Build a factory.",
  descr: "Combine assessment results so that multiple analysis techniques feed into one reporting and remediation process. The SSG might write scripts to invoke multiple detection techniques automatically and combine the results into a format that can be consumed by a single downstream review and reporting solution. Analysis engines may combine static and dynamic analysis. Different review streams, such as mobile versus standard approaches, can be unified with a factory. The tricky part of this activity is normalizing vulnerability information from disparate sources that use conflicting terminology. In some cases, a CWE-like approach can help with nomenclature. Combining multiple sources helps drive better informed risk mitigation decisions.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_CR32, vertical: v_Earth, count: 3, version: 8)
a_CR33 = Activity.create(
  practice: p_CR,
  bsid: "CR3.3",
  title: "Build a capability for eradicating specific bugs from the entire codebase.",
  descr: "When a new kind of bug is found, the SSG writes rules to find it and uses the rules to identify all occurrences of the new bug throughout the entire codebase. It’s possible to eradicate the bug type entirely without waiting for every project to reach the code review portion of its lifecycle. A firm with only a handful of software applications will have an easier time with this activity than firms with a large number of large applications.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_CR33, vertical: v_Earth, count: 2, version: 8)
a_CR34 = Activity.create(
  practice: p_CR,
  bsid: "CR3.4",
  title: "Automate malicious code detection.",
  descr: "Automated code review is used to identify dangerous code written by malicious in-house developers or outsource providers. Examples of malicious code that could be targeted include back doors, logic bombs, time bombs, nefarious communication channels, obfuscated program logic, and dynamic code injection. Although out-of-the-box automation might identify some generic malicious-looking constructs, custom rules for static analysis tools used to codify acceptable and unacceptable code patterns in the organization’s codebase will quickly become a necessity. Manual code review for malicious code is a good start, but it is insufficient to complete this activity.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_CR34, vertical: v_Earth, count: 3, version: 8)
a_CR35 = Activity.create(
  practice: p_CR,
  bsid: "CR3.5",
  title: "Enforce coding standards.",
  descr: " A violation of the organization’s secure coding standards is sufficient grounds for rejecting a piece of code. Code review is objective—it shouldn’t devolve into a debate about whether or not bad code is exploitable. The enforced portion of the standard could start out being as simple as a list of banned functions. In some cases, coding standards for developers are published specific to technology stacks (for example, guidelines for C++, Spring, or Swift) and then enforced during the code review process or directly in the IDE. Standards can be positive (“do it this way”) or negative (“do not use this API”).",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_CR35, vertical: v_Earth, count: 5, version: 8)
p_ST = Practice.create(
  domain: d_SSDLTouchpoints,
  title: "Security Testing",
  short: "ST",
  descr: "The Security Testing practice is concerned with prerelease testing, including integrating security into standard quality assurance processes. The practice includes use of black-box security tools (including fuzz testing) as a smoke test in QA, risk-driven white-box testing, application of the attack model, and code coverage analysis. Security testing focuses on vulnerabilities in construction.",
  version: 8
)
a_ST11 = Activity.create(
  practice: p_ST,
  bsid: "ST1.1",
  title: "Ensure QA supports edge/boundary value condition testing.",
  descr: "The QA team goes beyond functional testing to perform basic adversarial tests. They probe simple edge cases and boundary conditions. No attacker skills required. When QA understands the value of pushing past standard functional testing using acceptable input, they begin to move slowly toward thinking like a bad guy. A discussion of boundary value testing leads naturally to the notion of an attacker probing the edges on purpose. What happens when you enter the wrong password over and over?",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_ST11, vertical: v_Earth, count: 87, version: 8)
a_ST13 = Activity.create(
  practice: p_ST,
  bsid: "ST1.3",
  title: "Drive tests with security requirements and security features.",
  descr: "Testers target declarative security mechanisms with tests derived from requirements and security features. For example, a tester could try to access administrative functionality as an unprivileged user or verify that a user account becomes locked after some number of failed authentication attempts. For the most part, security features can be tested in a fashion similar to other software features. Security mechanisms based on requirements such as account lockout, transaction limitations, entitlements, and so on are also tested. Of course, software security is not security software, but getting started with features is easy. New deployment models, such as cloud, might require novel test approaches.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_ST13, vertical: v_Earth, count: 79, version: 8)
a_ST21 = Activity.create(
  practice: p_ST,
  bsid: "ST2.1",
  title: "Integrate black-box security tools into the QA process.",
  descr: "The organization uses one or more black-box security testing tools as part of the quality assurance process. The tools are valuable because they encapsulate an attacker’s perspective, albeit generically. Tools such as IBM Security AppScan or HPE Fortify WebInspect are relevant for web applications, and fuzzing frameworks such as Synopsys Codenomicon are applicable for most network protocols. In some situations, other groups might collaborate with the SSG to apply the tools. For example, a testing team could run the tool but come to the SSG for help interpreting the results. Because of the way testing is integrated into agile development approaches, black-box tools might be used directly by the agile team. Regardless of who runs the black-box tool, the testing should be properly integrated into the QA cycle of the SSDL.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_ST21, vertical: v_Earth, count: 25, version: 8)
a_ST24 = Activity.create(
  practice: p_ST,
  bsid: "ST2.4",
  title: "Share security results with QA.",
  descr: "The SSG routinely shares results from security reviews with the QA department. CI/CD makes this easier because of the way testing is integrated in a cross-functional team. Over time, QA engineers learn the security mindset. Using security results to inform and evolve particular testing patterns can be a powerful mechanism leading to better security testing. This activity benefits from an engineering-focused QA function that is highly technical.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_ST24, vertical: v_Earth, count: 11, version: 8)
a_ST25 = Activity.create(
  practice: p_ST,
  bsid: "ST2.5",
  title: "Include security tests in QA automation.",
  descr: "Security tests run alongside functional tests as part of automated regression testing. The same automation framework houses both. Security testing is part of the routine. Security tests can be driven from abuse cases identified earlier in the lifecycle or tests derived from creative tweaks of functional tests.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_ST25, vertical: v_Earth, count: 9, version: 8)
a_ST26 = Activity.create(
  practice: p_ST,
  bsid: "ST2.6",
  title: "Perform fuzz testing customized to application APIs.",
  descr: "Test automation engineers or agile team members customize a fuzzing framework to the organization’s APIs. They could begin from scratch or use an existing fuzzing toolkit, but customization goes beyond creating custom protocol descriptions or file format templates. The fuzzing framework has a built-in understanding of the application interfaces it calls into. Test harnesses developed explicitly for particular applications can make good places to integrate fuzz testing.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_ST26, vertical: v_Earth, count: 10, version: 8)
a_ST33 = Activity.create(
  practice: p_ST,
  bsid: "ST3.3",
  title: "Drive tests with risk analysis results.",
  descr: "Testers use architecture analysis results to direct their work. For example, if architecture analysis concludes, “the security of the system hinges on the transactions being atomic and not being interrupted partway through,” then torn transactions will be become a primary target in adversarial testing. Adversarial tests like these can be developed according to risk profile—high-risk flaws first.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_ST33, vertical: v_Earth, count: 4, version: 8)
a_ST34 = Activity.create(
  practice: p_ST,
  bsid: "ST3.4",
  title: "Leverage coverage analysis.",
  descr: "Testers measure the code coverage of their security test (see [ST2.5 Include security tests in QA automation]) to identify code that isn’t being exercised. Code coverage analysis drives increased security testing depth. Standard-issue black-box testing tools achieve exceptionally low coverage, leaving a majority of the software under test unexplored. Don’t let this happen to your tests. Using standard measurements for coverage such as function coverage, line coverage, or multiple condition coverage is fine.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_ST34, vertical: v_Earth, count: 3, version: 8)
a_ST35 = Activity.create(
  practice: p_ST,
  bsid: "ST3.5",
  title: "Begin to build and apply adversarial security tests (abuse cases).",
  descr: "Testing begins to incorporate test cases based on abuse cases (see [AM2.1 Build attack patterns and abuse cases tied to potential attackers]). Testers move beyond verifying functionality and take on the attacker’s perspective. For example, testers might systematically attempt to replicate incidents from the organization’s history. Abuse and misuse cases based on the attacker’s perspective can also be driven from security policies, attack intelligence, and standards. This turns the corner from testing features to attempting to break the software under test.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_ST35, vertical: v_Earth, count: 4, version: 8)
d_Deployment = Domain.create(
  title: "Deployment",
  descr: "Practices that interface with traditional network security and software maintenance organizations",
  version: 8
)
p_PT = Practice.create(
  domain: d_Deployment,
  title: "Penetration Testing",
  short: "PT",
  descr: "The Penetration Testing practice involves standard outside-in testing of the sort carried out by security specialists. Penetration testing focuses on vulnerabilities in the final configuration, and provides direct feeds to defect management and mitigation.",
  version: 8
)
a_PT11 = Activity.create(
  practice: p_PT,
  bsid: "PT1.1",
  title: "Use external penetration testers to find problems.",
  descr: "Many organizations aren’t willing to address software security until there’s unmistakable evidence that the organization isn’t somehow magically immune to the problem. If security has not been a priority, external penetration testers can demonstrate that the organization’s code needs help. Penetration testers could be brought in to break a high-profile application to make the point. Over time, the focus of penetration testing moves from “I told you our stuff was broken” to a smoke test and sanity check done before shipping. External penetration testers bring a new set of eyes to the problem.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_PT11, vertical: v_Earth, count: 95, version: 8)
a_PT12 = Activity.create(
  practice: p_PT,
  bsid: "PT1.2",
  title: "Feed results to the defect management and mitigation system.",
  descr: "Penetration testing results are fed back to development through established defect management or mitigation channels, and development responds using their defect management and release process. Emailing them around doesn’t count. Properly done, the exercise demonstrates the organization’s ability to improve the state of security. Many firms are beginning to emphasize the critical importance of not just identifying but, more importantly, fixing security problems. One way to ensure attention is to add a security flag to the bug tracking and defect management system. Evolving DevOps and integrated team structures do not eliminate the need for formalized defect management systems.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_PT12, vertical: v_Earth, count: 71, version: 8)
a_PT13 = Activity.create(
  practice: p_PT,
  bsid: "PT1.3",
  title: "Use penetration testing tools internally.",
  descr: "The organization creates an internal penetration testing capability that uses tools. This capability can be part of the SSG or part of a specialized and trained team elsewhere in the organization. The tools improve efficiency and repeatability of the testing process and are often necessary in agile environments. Tools can include off-the-shelf products, standard issue network penetration tools that understand the application layer, and handwritten scripts. Free-time or crisis-driven efforts do not constitute an internal capability.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_PT13, vertical: v_Earth, count: 68, version: 8)
a_PT22 = Activity.create(
  practice: p_PT,
  bsid: "PT2.2",
  title: "Provide penetration testers with all available information.",
  descr: "Penetration testers, whether internal or external, use all available information about their target. Penetration testers can do deeper analysis and find more interesting problems when they have source code, design documents, architecture analysis results, and code review results. Give penetration testers everything you have created throughout the SSDL and ensure they use it. If your penetration tester doesn’t ask for the code, you need a new penetration tester.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_PT22, vertical: v_Earth, count: 23, version: 8)
a_PT23 = Activity.create(
  practice: p_PT,
  bsid: "PT2.3",
  title: "Schedule periodic penetration tests for application coverage.",
  descr: "Periodically test all applications in the SSG’s purview according to an established schedule, which could be tied to the calendar or to the release cycle. The testing serves as a sanity check and helps ensure yesterday’s software isn’t vulnerable to today’s attacks. This also helps maintain the security of software configurations and environments, especially in the cloud. High-profile applications might get a penetration test at least once a year. One important aspect of periodic testing is to make sure that the problems identified in a penetration test are actually fixed and they don’t creep back into the build. New automation created for CI/CD deserves penetration testing as well.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_PT23, vertical: v_Earth, count: 20, version: 8)
a_PT31 = Activity.create(
  practice: p_PT,
  bsid: "PT3.1",
  title: "Use external penetration testers to perform deep-dive analysis.",
  descr: "The organization uses external penetration testers to do deep-dive analysis for critical projects and to introduce fresh thinking into the SSG. These testers are experts and specialists; they keep the organization up to speed with the latest version of the attacker’s perspective and have a track record for breaking the type of software being tested. Skilled penetration testers will always break a system. The question is whether they demonstrate new kinds of thinking about attacks that can be useful when designing, implementing, and hardening new systems. Creating new types of attacks from threat intelligence and abuse cases prevents checklist-driven approaches that only look for known types of problems and is pretty much essential when it comes to new technology.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_PT31, vertical: v_Earth, count: 8, version: 8)
a_PT32 = Activity.create(
  practice: p_PT,
  bsid: "PT3.2",
  title: "Have the SSG customize penetration testing tools and scripts.",
  descr: "The SSG either creates penetration testing tools or adapts publicly available tools so they can more efficiently and comprehensively attack the organization’s systems. Tools improve the efficiency of the penetration testing process without sacrificing the depth of problems the SSG can identify. Automation can be particularly valuable under agile methodologies because it helps teams go faster. Tools that can be tailored are always preferable to generic tools. This activity considers both the depth of tests and their scope.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_PT32, vertical: v_Earth, count: 7, version: 8)
p_SE = Practice.create(
  domain: d_Deployment,
  title: "Software Environment",
  short: "SE",
  descr: "The Software Environment practice concerns itself with OS and platform patching, web application firewalls, installation and configuration documentation, application monitoring, change management, and ultimately, code signing.",
  version: 8
)
a_SE11 = Activity.create(
  practice: p_SE,
  bsid: "SE1.1",
  title: "Use application input monitoring.",
  descr: "The organization monitors the input to software it runs in order to spot attacks. For web code, a web application firewall (WAF) can do the job. Other kinds of software likely require other approaches. The SSG could be responsible for the care and feeding of the system. Incident response is not part of this activity. Defanged WAFs that write log files can be useful if somebody reviews the logs periodically. On the other hand, a WAF that’s unmonitored makes no noise when an application falls in the woods.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_SE11, vertical: v_Earth, count: 49, version: 8)
a_SE12 = Activity.create(
  practice: p_SE,
  bsid: "SE1.2",
  title: "Ensure host and network security basics are in place.",
  descr: "The organization provides a solid foundation for software by ensuring that host and network security basics are in place. It is common for operations security teams to be responsible for duties such as patching operating systems, maintaining firewalls, and properly configuring cloud services. Doing software security before network security is like putting on your pants before putting on your underwear.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_SE12, vertical: v_Earth, count: 91, version: 8)
a_SE22 = Activity.create(
  practice: p_SE,
  bsid: "SE2.2",
  title: "Publish installation guides.",
  descr: "The SSDL requires the creation of an installation guide or a clearly described configuration, such as a container, to help deployment teams and operators install and configure the software securely. If special steps are required to ensure a deployment is secure, the steps are either outlined in the installation guide or explicitly noted in deployment automation. The guide should include a discussion of COTS components. In some cases, installation guides are distributed to customers who buy the software. Make sure that all deployment automation can be understood by smart humans and not just a machine. Evolving DevOps and integrated team structures do not eliminate the need for human-readable guidance. Of course, secure by default is always the best way to go.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SE22, vertical: v_Earth, count: 33, version: 8)
a_SE24 = Activity.create(
  practice: p_SE,
  bsid: "SE2.4",
  title: "Use code signing.",
  descr: "The organization uses code signing for software published across trust boundaries. Code signing is particularly useful for protecting the integrity of software that leaves the organization’s control, such as shrink-wrapped applications or thick clients. The fact that some mobile platforms require application code to be signed does not indicate institutional use of code signing.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_SE24, vertical: v_Earth, count: 29, version: 8)
a_SE32 = Activity.create(
  practice: p_SE,
  bsid: "SE3.2",
  title: "Use code protection.",
  descr: "To protect intellectual property and make exploit development harder, the organization erects barriers to reverse engineering. This is particularly important for widely distributed mobile applications. Obfuscation techniques could be applied as part of the production build and release process. Employing platform-specific controls such as Data Execution Prevention (DEP), Safe Structured Error Handling (SafeSEH), and Address Space Layout Randomization (ASLR) can make exploit development more difficult.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_SE32, vertical: v_Earth, count: 15, version: 8)
a_SE33 = Activity.create(
  practice: p_SE,
  bsid: "SE3.3",
  title: "Use application behavior monitoring and diagnostics.",
  descr: "The organization monitors the behavior of production software looking for misbehavior and signs of attack. This activity goes beyond host and network monitoring to look for software-specific problems, such as indications of malicious behavior. Intrusion detection and anomaly detection systems at the application level may focus on an application’s interaction with the operating system (through system calls) or with the kinds of data that an application consumes, originates, and manipulates.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_SE33, vertical: v_Earth, count: 4, version: 8)
a_SE34 = Activity.create(
  practice: p_SE,
  bsid: "SE3.4",
  title: "Use application containers.",
  descr: "The organization uses application containers to support its software security goals. The primary drivers for using containers include ease of deployment, a tighter coupling of applications with their dependencies, and isolation without the overhead of deploying a full OS on a virtual machine. Containers provide a convenient place for security controls to be applied and updated consistently. Containers used in development or test environments without reference to security do not count.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_SE34, vertical: v_Earth, count: 4, version: 8)
p_CMVM = Practice.create(
  domain: d_Deployment,
  title: "Configuration Management & Vulnerability Management",
  short: "CMVM",
  descr: "The Configuration Management & Vulnerability Management practice concerns itself with patching and updating applications, version control, defect tracking and remediation, and incident handling.",
  version: 8
)
a_CMVM11 = Activity.create(
  practice: p_CMVM,
  bsid: "CMVM1.1",
  title: "Create or interface with incident response.",
  descr: "The SSG is prepared to respond to an incident and is regularly included in the incident response process. The group either creates its own incident response capability or regularly interfaces with the organization’s existing incident response team. A regular meeting between the SSG and the incident response team can keep information flowing in both directions. Sometimes cloud service providers need to be looped in. In many cases, software security initiatives have evolved from incident response teams who began to realize that software vulnerabilities were the bane of their existence.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_CMVM11, vertical: v_Earth, count: 92, version: 8)
a_CMVM12 = Activity.create(
  practice: p_CMVM,
  bsid: "CMVM1.2",
  title: "Identify software defects found in operations monitoring and feed them back to development.",
  descr: "Defects identified through operations monitoring are fed back to development and used to change developer behavior. The contents of production logs can be revealing (or can reveal the need for improved logging). In some cases, providing a way to enter incident triage data into an existing bug-tracking system (many times making use of a special security flag) seems to work. The idea is to close the information loop and make sure security problems get fixed. In the best of cases, processes in the SSDL can be improved based on operational data.",
  level: 1,
  version: 8
)
ActivityVertical.create(activity: a_CMVM12, vertical: v_Earth, count: 96, version: 8)
a_CMVM21 = Activity.create(
  practice: p_CMVM,
  bsid: "CMVM2.1",
  title: "Have emergency codebase response.",
  descr: "The organization can make quick code changes when an application is under attack. A rapid-response team works in conjunction with the application owners and the SSG to study the code and the attack, find a resolution, and push a patch into production. Often, the emergency response team is the development team itself, especially when agile methodologies are in use. Fire drills don’t count; a well-defined process is required. A process that has never been used might not actually work.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_CMVM21, vertical: v_Earth, count: 78, version: 8)
a_CMVM22 = Activity.create(
  practice: p_CMVM,
  bsid: "CMVM2.2",
  title: "Track software bugs found in operations through the fix process.",
  descr: "Defects found in operations are fed back to development, entered into established defect management systems, and tracked through the fix process. This capability could come in the form of a two-way bridge between the bug finders and the bug fixers. Make sure the loop is closed completely. Setting a security flag in the bug-tracking system can help facilitate tracking.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_CMVM22, vertical: v_Earth, count: 83, version: 8)
a_CMVM23 = Activity.create(
  practice: p_CMVM,
  bsid: "CMVM2.3",
  title: "Develop an operations inventory of applications.",
  descr: "The organization has a map of its software deployments. If a piece of code needs to be changed, Operations or DevOps can reliably identify all the places where the change needs to be installed. Sometimes common components shared between multiple projects are noted so that when an error occurs in one application, other applications that share the same components can be fixed as well.",
  level: 2,
  version: 8
)
ActivityVertical.create(activity: a_CMVM23, vertical: v_Earth, count: 44, version: 8)
a_CMVM31 = Activity.create(
  practice: p_CMVM,
  bsid: "CMVM3.1",
  title: "Fix all occurrences of software bugs found in operations.",
  descr: "The organization fixes all instances of each software bug found during operations and not just the small number of instances that have triggered bug reports. This requires the ability to reexamine the entire codebase when new kinds of bugs come to light (see [CR3.3 Build a capability for eradicating specific bugs from the entire codebase]). One way to approach this is to create a rule set that generalizes a deployed bug into something that can be scanned for using automated code review.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_CMVM31, vertical: v_Earth, count: 4, version: 8)
a_CMVM32 = Activity.create(
  practice: p_CMVM,
  bsid: "CMVM3.2",
  title: "Enhance the SSDL to prevent software bugs found in operations.",
  descr: "Experience from operations leads to changes in the SSDL. The SSDL is strengthened to prevent the reintroduction of bugs found during operations. To make this process systematic, each incident response postmortem could include a “feedback to SSDL” step. This works best when root-cause analysis pinpoints where in the SDLC an error could have been introduced or slipped by uncaught. Cross-functional agile teams might have an easier time with this because all the players are involved. An ad hoc approach is not sufficient.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_CMVM32, vertical: v_Earth, count: 6, version: 8)
a_CMVM33 = Activity.create(
  practice: p_CMVM,
  bsid: "CMVM3.3",
  title: "Simulate software crises.",
  descr: "The SSG simulates high-impact software security crises to ensure software incident response capabilities minimize damage. Simulations could test for the ability to identify and mitigate specific threats or, in other cases, could begin with the assumption that a critical system or service is already compromised and evaluate the organization’s ability to respond. When simulations model successful attacks, an important question to consider is the time period required to clean up. Regardless, simulations must focus on security-relevant software failure and not on natural disasters or other types of emergency response drills. If the data center is burning to the ground, the SSG won’t be among the first responders.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_CMVM33, vertical: v_Earth, count: 7, version: 8)
a_CMVM34 = Activity.create(
  practice: p_CMVM,
  bsid: "CMVM3.4",
  title: "Operate a bug bounty program.",
  descr: "The organization solicits vulnerability reports from external researchers and pays a bounty for each verified and accepted vulnerability received. Payouts typically follow a sliding scale linked to multiple factors, such as vulnerability type (e.g., remote code execution is worth $10,000 versus CSRF is worth $750), exploitability (demonstrable exploits command much higher payouts), or specific services and software versions (widely deployed or critical services warrant higher payouts). Ad hoc or short-duration activities, such as capture-the- flag contests, do not count.",
  level: 3,
  version: 8
)
ActivityVertical.create(activity: a_CMVM34, vertical: v_Earth, count: 12, version: 8)
v_Financial = Vertical.create(
  name: "Financial",
  numfirms: 47,
  version: 8
)
v_ISV = Vertical.create(
  name: "ISV",
  numfirms: 38,
  version: 8
)
v_Cloud = Vertical.create(
  name: "Cloud",
  numfirms: 16,
  version: 8
)
v_Healthcare = Vertical.create(
  name: "Healthcare",
  numfirms: 17,
  version: 8
)
v_IoT = Vertical.create(
  name: "IoT",
  numfirms: 12,
  version: 8
)
v_Insurance = Vertical.create(
  name: "Insurance",
  numfirms: 11,
  version: 8
)
ActivityVertical.create(activity: a_SM11, vertical: v_Financial, count: 30, version: 8)
ActivityVertical.create(activity: a_SM11, vertical: v_ISV, count: 21, version: 8)
ActivityVertical.create(activity: a_SM11, vertical: v_Cloud, count: 8, version: 8)
ActivityVertical.create(activity: a_SM11, vertical: v_Healthcare, count: 7, version: 8)
ActivityVertical.create(activity: a_SM11, vertical: v_IoT, count: 5, version: 8)
ActivityVertical.create(activity: a_SM11, vertical: v_Insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_SM12, vertical: v_Financial, count: 22, version: 8)
ActivityVertical.create(activity: a_SM12, vertical: v_ISV, count: 25, version: 8)
ActivityVertical.create(activity: a_SM12, vertical: v_Cloud, count: 10, version: 8)
ActivityVertical.create(activity: a_SM12, vertical: v_Healthcare, count: 7, version: 8)
ActivityVertical.create(activity: a_SM12, vertical: v_IoT, count: 9, version: 8)
ActivityVertical.create(activity: a_SM12, vertical: v_Insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_SM13, vertical: v_Financial, count: 25, version: 8)
ActivityVertical.create(activity: a_SM13, vertical: v_ISV, count: 20, version: 8)
ActivityVertical.create(activity: a_SM13, vertical: v_Cloud, count: 9, version: 8)
ActivityVertical.create(activity: a_SM13, vertical: v_Healthcare, count: 7, version: 8)
ActivityVertical.create(activity: a_SM13, vertical: v_IoT, count: 6, version: 8)
ActivityVertical.create(activity: a_SM13, vertical: v_Insurance, count: 5, version: 8)
ActivityVertical.create(activity: a_SM14, vertical: v_Financial, count: 44, version: 8)
ActivityVertical.create(activity: a_SM14, vertical: v_ISV, count: 32, version: 8)
ActivityVertical.create(activity: a_SM14, vertical: v_Cloud, count: 14, version: 8)
ActivityVertical.create(activity: a_SM14, vertical: v_Healthcare, count: 13, version: 8)
ActivityVertical.create(activity: a_SM14, vertical: v_IoT, count: 8, version: 8)
ActivityVertical.create(activity: a_SM14, vertical: v_Insurance, count: 9, version: 8)
ActivityVertical.create(activity: a_SM21, vertical: v_Financial, count: 24, version: 8)
ActivityVertical.create(activity: a_SM21, vertical: v_ISV, count: 18, version: 8)
ActivityVertical.create(activity: a_SM21, vertical: v_Cloud, count: 10, version: 8)
ActivityVertical.create(activity: a_SM21, vertical: v_Healthcare, count: 4, version: 8)
ActivityVertical.create(activity: a_SM21, vertical: v_IoT, count: 4, version: 8)
ActivityVertical.create(activity: a_SM21, vertical: v_Insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_SM22, vertical: v_Financial, count: 23, version: 8)
ActivityVertical.create(activity: a_SM22, vertical: v_ISV, count: 11, version: 8)
ActivityVertical.create(activity: a_SM22, vertical: v_Cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_SM22, vertical: v_Healthcare, count: 5, version: 8)
ActivityVertical.create(activity: a_SM22, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_SM22, vertical: v_Insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_SM23, vertical: v_Financial, count: 15, version: 8)
ActivityVertical.create(activity: a_SM23, vertical: v_ISV, count: 18, version: 8)
ActivityVertical.create(activity: a_SM23, vertical: v_Cloud, count: 8, version: 8)
ActivityVertical.create(activity: a_SM23, vertical: v_Healthcare, count: 8, version: 8)
ActivityVertical.create(activity: a_SM23, vertical: v_IoT, count: 5, version: 8)
ActivityVertical.create(activity: a_SM23, vertical: v_Insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_SM25, vertical: v_Financial, count: 14, version: 8)
ActivityVertical.create(activity: a_SM25, vertical: v_ISV, count: 5, version: 8)
ActivityVertical.create(activity: a_SM25, vertical: v_Cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_SM25, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_SM25, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_SM25, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_SM26, vertical: v_Financial, count: 21, version: 8)
ActivityVertical.create(activity: a_SM26, vertical: v_ISV, count: 11, version: 8)
ActivityVertical.create(activity: a_SM26, vertical: v_Cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_SM26, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_SM26, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_SM26, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_SM31, vertical: v_Financial, count: 8, version: 8)
ActivityVertical.create(activity: a_SM31, vertical: v_ISV, count: 5, version: 8)
ActivityVertical.create(activity: a_SM31, vertical: v_Cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_SM31, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_SM31, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_SM31, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_SM32, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_SM32, vertical: v_ISV, count: 6, version: 8)
ActivityVertical.create(activity: a_SM32, vertical: v_Cloud, count: 5, version: 8)
ActivityVertical.create(activity: a_SM32, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_SM32, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_SM32, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_CP11, vertical: v_Financial, count: 33, version: 8)
ActivityVertical.create(activity: a_CP11, vertical: v_ISV, count: 19, version: 8)
ActivityVertical.create(activity: a_CP11, vertical: v_Cloud, count: 10, version: 8)
ActivityVertical.create(activity: a_CP11, vertical: v_Healthcare, count: 14, version: 8)
ActivityVertical.create(activity: a_CP11, vertical: v_IoT, count: 7, version: 8)
ActivityVertical.create(activity: a_CP11, vertical: v_Insurance, count: 6, version: 8)
ActivityVertical.create(activity: a_CP12, vertical: v_Financial, count: 42, version: 8)
ActivityVertical.create(activity: a_CP12, vertical: v_ISV, count: 24, version: 8)
ActivityVertical.create(activity: a_CP12, vertical: v_Cloud, count: 11, version: 8)
ActivityVertical.create(activity: a_CP12, vertical: v_Healthcare, count: 17, version: 8)
ActivityVertical.create(activity: a_CP12, vertical: v_IoT, count: 11, version: 8)
ActivityVertical.create(activity: a_CP12, vertical: v_Insurance, count: 9, version: 8)
ActivityVertical.create(activity: a_CP13, vertical: v_Financial, count: 32, version: 8)
ActivityVertical.create(activity: a_CP13, vertical: v_ISV, count: 19, version: 8)
ActivityVertical.create(activity: a_CP13, vertical: v_Cloud, count: 9, version: 8)
ActivityVertical.create(activity: a_CP13, vertical: v_Healthcare, count: 8, version: 8)
ActivityVertical.create(activity: a_CP13, vertical: v_IoT, count: 4, version: 8)
ActivityVertical.create(activity: a_CP13, vertical: v_Insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_CP21, vertical: v_Financial, count: 15, version: 8)
ActivityVertical.create(activity: a_CP21, vertical: v_ISV, count: 8, version: 8)
ActivityVertical.create(activity: a_CP21, vertical: v_Cloud, count: 5, version: 8)
ActivityVertical.create(activity: a_CP21, vertical: v_Healthcare, count: 4, version: 8)
ActivityVertical.create(activity: a_CP21, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_CP21, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_CP22, vertical: v_Financial, count: 23, version: 8)
ActivityVertical.create(activity: a_CP22, vertical: v_ISV, count: 11, version: 8)
ActivityVertical.create(activity: a_CP22, vertical: v_Cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_CP22, vertical: v_Healthcare, count: 6, version: 8)
ActivityVertical.create(activity: a_CP22, vertical: v_IoT, count: 3, version: 8)
ActivityVertical.create(activity: a_CP22, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_CP23, vertical: v_Financial, count: 17, version: 8)
ActivityVertical.create(activity: a_CP23, vertical: v_ISV, count: 13, version: 8)
ActivityVertical.create(activity: a_CP23, vertical: v_Cloud, count: 8, version: 8)
ActivityVertical.create(activity: a_CP23, vertical: v_Healthcare, count: 5, version: 8)
ActivityVertical.create(activity: a_CP23, vertical: v_IoT, count: 4, version: 8)
ActivityVertical.create(activity: a_CP23, vertical: v_Insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_CP24, vertical: v_Financial, count: 21, version: 8)
ActivityVertical.create(activity: a_CP24, vertical: v_ISV, count: 13, version: 8)
ActivityVertical.create(activity: a_CP24, vertical: v_Cloud, count: 5, version: 8)
ActivityVertical.create(activity: a_CP24, vertical: v_Healthcare, count: 6, version: 8)
ActivityVertical.create(activity: a_CP24, vertical: v_IoT, count: 5, version: 8)
ActivityVertical.create(activity: a_CP24, vertical: v_Insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_CP25, vertical: v_Financial, count: 17, version: 8)
ActivityVertical.create(activity: a_CP25, vertical: v_ISV, count: 16, version: 8)
ActivityVertical.create(activity: a_CP25, vertical: v_Cloud, count: 8, version: 8)
ActivityVertical.create(activity: a_CP25, vertical: v_Healthcare, count: 9, version: 8)
ActivityVertical.create(activity: a_CP25, vertical: v_IoT, count: 3, version: 8)
ActivityVertical.create(activity: a_CP25, vertical: v_Insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_CP31, vertical: v_Financial, count: 16, version: 8)
ActivityVertical.create(activity: a_CP31, vertical: v_ISV, count: 6, version: 8)
ActivityVertical.create(activity: a_CP31, vertical: v_Cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_CP31, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_CP31, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_CP31, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_CP32, vertical: v_Financial, count: 8, version: 8)
ActivityVertical.create(activity: a_CP32, vertical: v_ISV, count: 3, version: 8)
ActivityVertical.create(activity: a_CP32, vertical: v_Cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_CP32, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_CP32, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_CP32, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_CP33, vertical: v_Financial, count: 3, version: 8)
ActivityVertical.create(activity: a_CP33, vertical: v_ISV, count: 2, version: 8)
ActivityVertical.create(activity: a_CP33, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_CP33, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_CP33, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_CP33, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_T11, vertical: v_Financial, count: 31, version: 8)
ActivityVertical.create(activity: a_T11, vertical: v_ISV, count: 31, version: 8)
ActivityVertical.create(activity: a_T11, vertical: v_Cloud, count: 15, version: 8)
ActivityVertical.create(activity: a_T11, vertical: v_Healthcare, count: 9, version: 8)
ActivityVertical.create(activity: a_T11, vertical: v_IoT, count: 10, version: 8)
ActivityVertical.create(activity: a_T11, vertical: v_Insurance, count: 6, version: 8)
ActivityVertical.create(activity: a_T15, vertical: v_Financial, count: 14, version: 8)
ActivityVertical.create(activity: a_T15, vertical: v_ISV, count: 15, version: 8)
ActivityVertical.create(activity: a_T15, vertical: v_Cloud, count: 8, version: 8)
ActivityVertical.create(activity: a_T15, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_T15, vertical: v_IoT, count: 4, version: 8)
ActivityVertical.create(activity: a_T15, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_T16, vertical: v_Financial, count: 8, version: 8)
ActivityVertical.create(activity: a_T16, vertical: v_ISV, count: 12, version: 8)
ActivityVertical.create(activity: a_T16, vertical: v_Cloud, count: 5, version: 8)
ActivityVertical.create(activity: a_T16, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_T16, vertical: v_IoT, count: 4, version: 8)
ActivityVertical.create(activity: a_T16, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_T17, vertical: v_Financial, count: 24, version: 8)
ActivityVertical.create(activity: a_T17, vertical: v_ISV, count: 17, version: 8)
ActivityVertical.create(activity: a_T17, vertical: v_Cloud, count: 8, version: 8)
ActivityVertical.create(activity: a_T17, vertical: v_Healthcare, count: 4, version: 8)
ActivityVertical.create(activity: a_T17, vertical: v_IoT, count: 5, version: 8)
ActivityVertical.create(activity: a_T17, vertical: v_Insurance, count: 5, version: 8)
ActivityVertical.create(activity: a_T25, vertical: v_Financial, count: 5, version: 8)
ActivityVertical.create(activity: a_T25, vertical: v_ISV, count: 9, version: 8)
ActivityVertical.create(activity: a_T25, vertical: v_Cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_T25, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_T25, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_T25, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_T26, vertical: v_Financial, count: 10, version: 8)
ActivityVertical.create(activity: a_T26, vertical: v_ISV, count: 4, version: 8)
ActivityVertical.create(activity: a_T26, vertical: v_Cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_T26, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_T26, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_T26, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_T31, vertical: v_Financial, count: 0, version: 8)
ActivityVertical.create(activity: a_T31, vertical: v_ISV, count: 3, version: 8)
ActivityVertical.create(activity: a_T31, vertical: v_Cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_T31, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_T31, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_T31, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_T32, vertical: v_Financial, count: 2, version: 8)
ActivityVertical.create(activity: a_T32, vertical: v_ISV, count: 2, version: 8)
ActivityVertical.create(activity: a_T32, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_T32, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_T32, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_T32, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_T33, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_T33, vertical: v_ISV, count: 3, version: 8)
ActivityVertical.create(activity: a_T33, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_T33, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_T33, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_T33, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_T34, vertical: v_Financial, count: 3, version: 8)
ActivityVertical.create(activity: a_T34, vertical: v_ISV, count: 4, version: 8)
ActivityVertical.create(activity: a_T34, vertical: v_Cloud, count: 4, version: 8)
ActivityVertical.create(activity: a_T34, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_T34, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_T34, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_T35, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_T35, vertical: v_ISV, count: 2, version: 8)
ActivityVertical.create(activity: a_T35, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_T35, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_T35, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_T35, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_T36, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_T36, vertical: v_ISV, count: 3, version: 8)
ActivityVertical.create(activity: a_T36, vertical: v_Cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_T36, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_T36, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_T36, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_AM12, vertical: v_Financial, count: 40, version: 8)
ActivityVertical.create(activity: a_AM12, vertical: v_ISV, count: 20, version: 8)
ActivityVertical.create(activity: a_AM12, vertical: v_Cloud, count: 10, version: 8)
ActivityVertical.create(activity: a_AM12, vertical: v_Healthcare, count: 8, version: 8)
ActivityVertical.create(activity: a_AM12, vertical: v_IoT, count: 8, version: 8)
ActivityVertical.create(activity: a_AM12, vertical: v_Insurance, count: 6, version: 8)
ActivityVertical.create(activity: a_AM13, vertical: v_Financial, count: 18, version: 8)
ActivityVertical.create(activity: a_AM13, vertical: v_ISV, count: 12, version: 8)
ActivityVertical.create(activity: a_AM13, vertical: v_Cloud, count: 5, version: 8)
ActivityVertical.create(activity: a_AM13, vertical: v_Healthcare, count: 6, version: 8)
ActivityVertical.create(activity: a_AM13, vertical: v_IoT, count: 4, version: 8)
ActivityVertical.create(activity: a_AM13, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_AM15, vertical: v_Financial, count: 25, version: 8)
ActivityVertical.create(activity: a_AM15, vertical: v_ISV, count: 18, version: 8)
ActivityVertical.create(activity: a_AM15, vertical: v_Cloud, count: 8, version: 8)
ActivityVertical.create(activity: a_AM15, vertical: v_Healthcare, count: 7, version: 8)
ActivityVertical.create(activity: a_AM15, vertical: v_IoT, count: 7, version: 8)
ActivityVertical.create(activity: a_AM15, vertical: v_Insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_AM21, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_AM21, vertical: v_ISV, count: 5, version: 8)
ActivityVertical.create(activity: a_AM21, vertical: v_Cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_AM21, vertical: v_Healthcare, count: 4, version: 8)
ActivityVertical.create(activity: a_AM21, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_AM21, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_AM22, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_AM22, vertical: v_ISV, count: 5, version: 8)
ActivityVertical.create(activity: a_AM22, vertical: v_Cloud, count: 5, version: 8)
ActivityVertical.create(activity: a_AM22, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_AM22, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_AM22, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_AM25, vertical: v_Financial, count: 5, version: 8)
ActivityVertical.create(activity: a_AM25, vertical: v_ISV, count: 5, version: 8)
ActivityVertical.create(activity: a_AM25, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_AM25, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_AM25, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_AM25, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_AM26, vertical: v_Financial, count: 3, version: 8)
ActivityVertical.create(activity: a_AM26, vertical: v_ISV, count: 6, version: 8)
ActivityVertical.create(activity: a_AM26, vertical: v_Cloud, count: 5, version: 8)
ActivityVertical.create(activity: a_AM26, vertical: v_Healthcare, count: 4, version: 8)
ActivityVertical.create(activity: a_AM26, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_AM26, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_AM27, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_AM27, vertical: v_ISV, count: 7, version: 8)
ActivityVertical.create(activity: a_AM27, vertical: v_Cloud, count: 6, version: 8)
ActivityVertical.create(activity: a_AM27, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_AM27, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_AM27, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_AM31, vertical: v_Financial, count: 0, version: 8)
ActivityVertical.create(activity: a_AM31, vertical: v_ISV, count: 4, version: 8)
ActivityVertical.create(activity: a_AM31, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_AM31, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_AM31, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_AM31, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_AM32, vertical: v_Financial, count: 0, version: 8)
ActivityVertical.create(activity: a_AM32, vertical: v_ISV, count: 1, version: 8)
ActivityVertical.create(activity: a_AM32, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_AM32, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_AM32, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_AM32, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_SFD11, vertical: v_Financial, count: 42, version: 8)
ActivityVertical.create(activity: a_SFD11, vertical: v_ISV, count: 27, version: 8)
ActivityVertical.create(activity: a_SFD11, vertical: v_Cloud, count: 13, version: 8)
ActivityVertical.create(activity: a_SFD11, vertical: v_Healthcare, count: 12, version: 8)
ActivityVertical.create(activity: a_SFD11, vertical: v_IoT, count: 8, version: 8)
ActivityVertical.create(activity: a_SFD11, vertical: v_Insurance, count: 9, version: 8)
ActivityVertical.create(activity: a_SFD12, vertical: v_Financial, count: 31, version: 8)
ActivityVertical.create(activity: a_SFD12, vertical: v_ISV, count: 28, version: 8)
ActivityVertical.create(activity: a_SFD12, vertical: v_Cloud, count: 13, version: 8)
ActivityVertical.create(activity: a_SFD12, vertical: v_Healthcare, count: 11, version: 8)
ActivityVertical.create(activity: a_SFD12, vertical: v_IoT, count: 10, version: 8)
ActivityVertical.create(activity: a_SFD12, vertical: v_Insurance, count: 8, version: 8)
ActivityVertical.create(activity: a_SFD21, vertical: v_Financial, count: 12, version: 8)
ActivityVertical.create(activity: a_SFD21, vertical: v_ISV, count: 13, version: 8)
ActivityVertical.create(activity: a_SFD21, vertical: v_Cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_SFD21, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_SFD21, vertical: v_IoT, count: 4, version: 8)
ActivityVertical.create(activity: a_SFD21, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_SFD22, vertical: v_Financial, count: 16, version: 8)
ActivityVertical.create(activity: a_SFD22, vertical: v_ISV, count: 17, version: 8)
ActivityVertical.create(activity: a_SFD22, vertical: v_Cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_SFD22, vertical: v_Healthcare, count: 5, version: 8)
ActivityVertical.create(activity: a_SFD22, vertical: v_IoT, count: 6, version: 8)
ActivityVertical.create(activity: a_SFD22, vertical: v_Insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_SFD31, vertical: v_Financial, count: 4, version: 8)
ActivityVertical.create(activity: a_SFD31, vertical: v_ISV, count: 1, version: 8)
ActivityVertical.create(activity: a_SFD31, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_SFD31, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_SFD31, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_SFD31, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_SFD32, vertical: v_Financial, count: 5, version: 8)
ActivityVertical.create(activity: a_SFD32, vertical: v_ISV, count: 5, version: 8)
ActivityVertical.create(activity: a_SFD32, vertical: v_Cloud, count: 5, version: 8)
ActivityVertical.create(activity: a_SFD32, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_SFD32, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_SFD32, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_SFD33, vertical: v_Financial, count: 0, version: 8)
ActivityVertical.create(activity: a_SFD33, vertical: v_ISV, count: 1, version: 8)
ActivityVertical.create(activity: a_SFD33, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_SFD33, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_SFD33, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_SFD33, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_SR11, vertical: v_Financial, count: 39, version: 8)
ActivityVertical.create(activity: a_SR11, vertical: v_ISV, count: 22, version: 8)
ActivityVertical.create(activity: a_SR11, vertical: v_Cloud, count: 11, version: 8)
ActivityVertical.create(activity: a_SR11, vertical: v_Healthcare, count: 9, version: 8)
ActivityVertical.create(activity: a_SR11, vertical: v_IoT, count: 6, version: 8)
ActivityVertical.create(activity: a_SR11, vertical: v_Insurance, count: 5, version: 8)
ActivityVertical.create(activity: a_SR12, vertical: v_Financial, count: 34, version: 8)
ActivityVertical.create(activity: a_SR12, vertical: v_ISV, count: 23, version: 8)
ActivityVertical.create(activity: a_SR12, vertical: v_Cloud, count: 13, version: 8)
ActivityVertical.create(activity: a_SR12, vertical: v_Healthcare, count: 12, version: 8)
ActivityVertical.create(activity: a_SR12, vertical: v_IoT, count: 6, version: 8)
ActivityVertical.create(activity: a_SR12, vertical: v_Insurance, count: 5, version: 8)
ActivityVertical.create(activity: a_SR13, vertical: v_Financial, count: 39, version: 8)
ActivityVertical.create(activity: a_SR13, vertical: v_ISV, count: 22, version: 8)
ActivityVertical.create(activity: a_SR13, vertical: v_Cloud, count: 10, version: 8)
ActivityVertical.create(activity: a_SR13, vertical: v_Healthcare, count: 10, version: 8)
ActivityVertical.create(activity: a_SR13, vertical: v_IoT, count: 7, version: 8)
ActivityVertical.create(activity: a_SR13, vertical: v_Insurance, count: 9, version: 8)
ActivityVertical.create(activity: a_SR22, vertical: v_Financial, count: 21, version: 8)
ActivityVertical.create(activity: a_SR22, vertical: v_ISV, count: 11, version: 8)
ActivityVertical.create(activity: a_SR22, vertical: v_Cloud, count: 5, version: 8)
ActivityVertical.create(activity: a_SR22, vertical: v_Healthcare, count: 4, version: 8)
ActivityVertical.create(activity: a_SR22, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_SR22, vertical: v_Insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_SR23, vertical: v_Financial, count: 14, version: 8)
ActivityVertical.create(activity: a_SR23, vertical: v_ISV, count: 6, version: 8)
ActivityVertical.create(activity: a_SR23, vertical: v_Cloud, count: 4, version: 8)
ActivityVertical.create(activity: a_SR23, vertical: v_Healthcare, count: 4, version: 8)
ActivityVertical.create(activity: a_SR23, vertical: v_IoT, count: 3, version: 8)
ActivityVertical.create(activity: a_SR23, vertical: v_Insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_SR24, vertical: v_Financial, count: 7, version: 8)
ActivityVertical.create(activity: a_SR24, vertical: v_ISV, count: 14, version: 8)
ActivityVertical.create(activity: a_SR24, vertical: v_Cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_SR24, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_SR24, vertical: v_IoT, count: 5, version: 8)
ActivityVertical.create(activity: a_SR24, vertical: v_Insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_SR25, vertical: v_Financial, count: 15, version: 8)
ActivityVertical.create(activity: a_SR25, vertical: v_ISV, count: 7, version: 8)
ActivityVertical.create(activity: a_SR25, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_SR25, vertical: v_Healthcare, count: 4, version: 8)
ActivityVertical.create(activity: a_SR25, vertical: v_IoT, count: 4, version: 8)
ActivityVertical.create(activity: a_SR25, vertical: v_Insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_SR26, vertical: v_Financial, count: 7, version: 8)
ActivityVertical.create(activity: a_SR26, vertical: v_ISV, count: 4, version: 8)
ActivityVertical.create(activity: a_SR26, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_SR26, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_SR26, vertical: v_IoT, count: 3, version: 8)
ActivityVertical.create(activity: a_SR26, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_SR31, vertical: v_Financial, count: 3, version: 8)
ActivityVertical.create(activity: a_SR31, vertical: v_ISV, count: 5, version: 8)
ActivityVertical.create(activity: a_SR31, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_SR31, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_SR31, vertical: v_IoT, count: 3, version: 8)
ActivityVertical.create(activity: a_SR31, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_SR32, vertical: v_Financial, count: 3, version: 8)
ActivityVertical.create(activity: a_SR32, vertical: v_ISV, count: 4, version: 8)
ActivityVertical.create(activity: a_SR32, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_SR32, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_SR32, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_SR32, vertical: v_Insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_AA11, vertical: v_Financial, count: 38, version: 8)
ActivityVertical.create(activity: a_AA11, vertical: v_ISV, count: 33, version: 8)
ActivityVertical.create(activity: a_AA11, vertical: v_Cloud, count: 13, version: 8)
ActivityVertical.create(activity: a_AA11, vertical: v_Healthcare, count: 12, version: 8)
ActivityVertical.create(activity: a_AA11, vertical: v_IoT, count: 10, version: 8)
ActivityVertical.create(activity: a_AA11, vertical: v_Insurance, count: 8, version: 8)
ActivityVertical.create(activity: a_AA12, vertical: v_Financial, count: 9, version: 8)
ActivityVertical.create(activity: a_AA12, vertical: v_ISV, count: 16, version: 8)
ActivityVertical.create(activity: a_AA12, vertical: v_Cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_AA12, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_AA12, vertical: v_IoT, count: 6, version: 8)
ActivityVertical.create(activity: a_AA12, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_AA13, vertical: v_Financial, count: 6, version: 8)
ActivityVertical.create(activity: a_AA13, vertical: v_ISV, count: 14, version: 8)
ActivityVertical.create(activity: a_AA13, vertical: v_Cloud, count: 6, version: 8)
ActivityVertical.create(activity: a_AA13, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_AA13, vertical: v_IoT, count: 5, version: 8)
ActivityVertical.create(activity: a_AA13, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_AA14, vertical: v_Financial, count: 31, version: 8)
ActivityVertical.create(activity: a_AA14, vertical: v_ISV, count: 10, version: 8)
ActivityVertical.create(activity: a_AA14, vertical: v_Cloud, count: 4, version: 8)
ActivityVertical.create(activity: a_AA14, vertical: v_Healthcare, count: 9, version: 8)
ActivityVertical.create(activity: a_AA14, vertical: v_IoT, count: 5, version: 8)
ActivityVertical.create(activity: a_AA14, vertical: v_Insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_AA21, vertical: v_Financial, count: 4, version: 8)
ActivityVertical.create(activity: a_AA21, vertical: v_ISV, count: 9, version: 8)
ActivityVertical.create(activity: a_AA21, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_AA21, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_AA21, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_AA21, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_AA22, vertical: v_Financial, count: 3, version: 8)
ActivityVertical.create(activity: a_AA22, vertical: v_ISV, count: 6, version: 8)
ActivityVertical.create(activity: a_AA22, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_AA22, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_AA22, vertical: v_IoT, count: 3, version: 8)
ActivityVertical.create(activity: a_AA22, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_AA31, vertical: v_Financial, count: 2, version: 8)
ActivityVertical.create(activity: a_AA31, vertical: v_ISV, count: 0, version: 8)
ActivityVertical.create(activity: a_AA31, vertical: v_Cloud, count: 0, version: 8)
ActivityVertical.create(activity: a_AA31, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_AA31, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_AA31, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_AA32, vertical: v_Financial, count: 0, version: 8)
ActivityVertical.create(activity: a_AA32, vertical: v_ISV, count: 0, version: 8)
ActivityVertical.create(activity: a_AA32, vertical: v_Cloud, count: 0, version: 8)
ActivityVertical.create(activity: a_AA32, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_AA32, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_AA32, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_AA33, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_AA33, vertical: v_ISV, count: 1, version: 8)
ActivityVertical.create(activity: a_AA33, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_AA33, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_AA33, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_AA33, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_CR12, vertical: v_Financial, count: 31, version: 8)
ActivityVertical.create(activity: a_CR12, vertical: v_ISV, count: 23, version: 8)
ActivityVertical.create(activity: a_CR12, vertical: v_Cloud, count: 10, version: 8)
ActivityVertical.create(activity: a_CR12, vertical: v_Healthcare, count: 10, version: 8)
ActivityVertical.create(activity: a_CR12, vertical: v_IoT, count: 6, version: 8)
ActivityVertical.create(activity: a_CR12, vertical: v_Insurance, count: 7, version: 8)
ActivityVertical.create(activity: a_CR14, vertical: v_Financial, count: 28, version: 8)
ActivityVertical.create(activity: a_CR14, vertical: v_ISV, count: 26, version: 8)
ActivityVertical.create(activity: a_CR14, vertical: v_Cloud, count: 13, version: 8)
ActivityVertical.create(activity: a_CR14, vertical: v_Healthcare, count: 8, version: 8)
ActivityVertical.create(activity: a_CR14, vertical: v_IoT, count: 7, version: 8)
ActivityVertical.create(activity: a_CR14, vertical: v_Insurance, count: 5, version: 8)
ActivityVertical.create(activity: a_CR15, vertical: v_Financial, count: 14, version: 8)
ActivityVertical.create(activity: a_CR15, vertical: v_ISV, count: 16, version: 8)
ActivityVertical.create(activity: a_CR15, vertical: v_Cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_CR15, vertical: v_Healthcare, count: 4, version: 8)
ActivityVertical.create(activity: a_CR15, vertical: v_IoT, count: 5, version: 8)
ActivityVertical.create(activity: a_CR15, vertical: v_Insurance, count: 3, version: 8)
ActivityVertical.create(activity: a_CR16, vertical: v_Financial, count: 19, version: 8)
ActivityVertical.create(activity: a_CR16, vertical: v_ISV, count: 15, version: 8)
ActivityVertical.create(activity: a_CR16, vertical: v_Cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_CR16, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_CR16, vertical: v_IoT, count: 4, version: 8)
ActivityVertical.create(activity: a_CR16, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_CR25, vertical: v_Financial, count: 14, version: 8)
ActivityVertical.create(activity: a_CR25, vertical: v_ISV, count: 10, version: 8)
ActivityVertical.create(activity: a_CR25, vertical: v_Cloud, count: 6, version: 8)
ActivityVertical.create(activity: a_CR25, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_CR25, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_CR25, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_CR26, vertical: v_Financial, count: 10, version: 8)
ActivityVertical.create(activity: a_CR26, vertical: v_ISV, count: 5, version: 8)
ActivityVertical.create(activity: a_CR26, vertical: v_Cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_CR26, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_CR26, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_CR26, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_CR27, vertical: v_Financial, count: 14, version: 8)
ActivityVertical.create(activity: a_CR27, vertical: v_ISV, count: 8, version: 8)
ActivityVertical.create(activity: a_CR27, vertical: v_Cloud, count: 5, version: 8)
ActivityVertical.create(activity: a_CR27, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_CR27, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_CR27, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_CR32, vertical: v_Financial, count: 2, version: 8)
ActivityVertical.create(activity: a_CR32, vertical: v_ISV, count: 1, version: 8)
ActivityVertical.create(activity: a_CR32, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_CR32, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_CR32, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_CR32, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_CR33, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_CR33, vertical: v_ISV, count: 0, version: 8)
ActivityVertical.create(activity: a_CR33, vertical: v_Cloud, count: 0, version: 8)
ActivityVertical.create(activity: a_CR33, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_CR33, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_CR33, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_CR34, vertical: v_Financial, count: 3, version: 8)
ActivityVertical.create(activity: a_CR34, vertical: v_ISV, count: 0, version: 8)
ActivityVertical.create(activity: a_CR34, vertical: v_Cloud, count: 0, version: 8)
ActivityVertical.create(activity: a_CR34, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_CR34, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_CR34, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_CR35, vertical: v_Financial, count: 2, version: 8)
ActivityVertical.create(activity: a_CR35, vertical: v_ISV, count: 2, version: 8)
ActivityVertical.create(activity: a_CR35, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_CR35, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_CR35, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_CR35, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_ST11, vertical: v_Financial, count: 40, version: 8)
ActivityVertical.create(activity: a_ST11, vertical: v_ISV, count: 30, version: 8)
ActivityVertical.create(activity: a_ST11, vertical: v_Cloud, count: 12, version: 8)
ActivityVertical.create(activity: a_ST11, vertical: v_Healthcare, count: 12, version: 8)
ActivityVertical.create(activity: a_ST11, vertical: v_IoT, count: 10, version: 8)
ActivityVertical.create(activity: a_ST11, vertical: v_Insurance, count: 11, version: 8)
ActivityVertical.create(activity: a_ST13, vertical: v_Financial, count: 38, version: 8)
ActivityVertical.create(activity: a_ST13, vertical: v_ISV, count: 31, version: 8)
ActivityVertical.create(activity: a_ST13, vertical: v_Cloud, count: 12, version: 8)
ActivityVertical.create(activity: a_ST13, vertical: v_Healthcare, count: 8, version: 8)
ActivityVertical.create(activity: a_ST13, vertical: v_IoT, count: 10, version: 8)
ActivityVertical.create(activity: a_ST13, vertical: v_Insurance, count: 8, version: 8)
ActivityVertical.create(activity: a_ST21, vertical: v_Financial, count: 10, version: 8)
ActivityVertical.create(activity: a_ST21, vertical: v_ISV, count: 11, version: 8)
ActivityVertical.create(activity: a_ST21, vertical: v_Cloud, count: 4, version: 8)
ActivityVertical.create(activity: a_ST21, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_ST21, vertical: v_IoT, count: 3, version: 8)
ActivityVertical.create(activity: a_ST21, vertical: v_Insurance, count: 5, version: 8)
ActivityVertical.create(activity: a_ST24, vertical: v_Financial, count: 6, version: 8)
ActivityVertical.create(activity: a_ST24, vertical: v_ISV, count: 3, version: 8)
ActivityVertical.create(activity: a_ST24, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_ST24, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_ST24, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_ST24, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_ST25, vertical: v_Financial, count: 2, version: 8)
ActivityVertical.create(activity: a_ST25, vertical: v_ISV, count: 5, version: 8)
ActivityVertical.create(activity: a_ST25, vertical: v_Cloud, count: 3, version: 8)
ActivityVertical.create(activity: a_ST25, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_ST25, vertical: v_IoT, count: 3, version: 8)
ActivityVertical.create(activity: a_ST25, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_ST26, vertical: v_Financial, count: 0, version: 8)
ActivityVertical.create(activity: a_ST26, vertical: v_ISV, count: 8, version: 8)
ActivityVertical.create(activity: a_ST26, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_ST26, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_ST26, vertical: v_IoT, count: 6, version: 8)
ActivityVertical.create(activity: a_ST26, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_ST33, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_ST33, vertical: v_ISV, count: 3, version: 8)
ActivityVertical.create(activity: a_ST33, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_ST33, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_ST33, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_ST33, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_ST34, vertical: v_Financial, count: 0, version: 8)
ActivityVertical.create(activity: a_ST34, vertical: v_ISV, count: 1, version: 8)
ActivityVertical.create(activity: a_ST34, vertical: v_Cloud, count: 0, version: 8)
ActivityVertical.create(activity: a_ST34, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_ST34, vertical: v_IoT, count: 3, version: 8)
ActivityVertical.create(activity: a_ST34, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_ST35, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_ST35, vertical: v_ISV, count: 3, version: 8)
ActivityVertical.create(activity: a_ST35, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_ST35, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_ST35, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_ST35, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_PT11, vertical: v_Financial, count: 43, version: 8)
ActivityVertical.create(activity: a_PT11, vertical: v_ISV, count: 33, version: 8)
ActivityVertical.create(activity: a_PT11, vertical: v_Cloud, count: 14, version: 8)
ActivityVertical.create(activity: a_PT11, vertical: v_Healthcare, count: 14, version: 8)
ActivityVertical.create(activity: a_PT11, vertical: v_IoT, count: 10, version: 8)
ActivityVertical.create(activity: a_PT11, vertical: v_Insurance, count: 11, version: 8)
ActivityVertical.create(activity: a_PT12, vertical: v_Financial, count: 34, version: 8)
ActivityVertical.create(activity: a_PT12, vertical: v_ISV, count: 30, version: 8)
ActivityVertical.create(activity: a_PT12, vertical: v_Cloud, count: 15, version: 8)
ActivityVertical.create(activity: a_PT12, vertical: v_Healthcare, count: 6, version: 8)
ActivityVertical.create(activity: a_PT12, vertical: v_IoT, count: 6, version: 8)
ActivityVertical.create(activity: a_PT12, vertical: v_Insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_PT13, vertical: v_Financial, count: 30, version: 8)
ActivityVertical.create(activity: a_PT13, vertical: v_ISV, count: 23, version: 8)
ActivityVertical.create(activity: a_PT13, vertical: v_Cloud, count: 10, version: 8)
ActivityVertical.create(activity: a_PT13, vertical: v_Healthcare, count: 13, version: 8)
ActivityVertical.create(activity: a_PT13, vertical: v_IoT, count: 7, version: 8)
ActivityVertical.create(activity: a_PT13, vertical: v_Insurance, count: 5, version: 8)
ActivityVertical.create(activity: a_PT22, vertical: v_Financial, count: 6, version: 8)
ActivityVertical.create(activity: a_PT22, vertical: v_ISV, count: 11, version: 8)
ActivityVertical.create(activity: a_PT22, vertical: v_Cloud, count: 4, version: 8)
ActivityVertical.create(activity: a_PT22, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_PT22, vertical: v_IoT, count: 4, version: 8)
ActivityVertical.create(activity: a_PT22, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_PT23, vertical: v_Financial, count: 11, version: 8)
ActivityVertical.create(activity: a_PT23, vertical: v_ISV, count: 10, version: 8)
ActivityVertical.create(activity: a_PT23, vertical: v_Cloud, count: 5, version: 8)
ActivityVertical.create(activity: a_PT23, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_PT23, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_PT23, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_PT31, vertical: v_Financial, count: 1, version: 8)
ActivityVertical.create(activity: a_PT31, vertical: v_ISV, count: 3, version: 8)
ActivityVertical.create(activity: a_PT31, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_PT31, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_PT31, vertical: v_IoT, count: 3, version: 8)
ActivityVertical.create(activity: a_PT31, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_PT32, vertical: v_Financial, count: 4, version: 8)
ActivityVertical.create(activity: a_PT32, vertical: v_ISV, count: 3, version: 8)
ActivityVertical.create(activity: a_PT32, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_PT32, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_PT32, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_PT32, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_SE11, vertical: v_Financial, count: 26, version: 8)
ActivityVertical.create(activity: a_SE11, vertical: v_ISV, count: 11, version: 8)
ActivityVertical.create(activity: a_SE11, vertical: v_Cloud, count: 8, version: 8)
ActivityVertical.create(activity: a_SE11, vertical: v_Healthcare, count: 10, version: 8)
ActivityVertical.create(activity: a_SE11, vertical: v_IoT, count: 3, version: 8)
ActivityVertical.create(activity: a_SE11, vertical: v_Insurance, count: 6, version: 8)
ActivityVertical.create(activity: a_SE12, vertical: v_Financial, count: 43, version: 8)
ActivityVertical.create(activity: a_SE12, vertical: v_ISV, count: 30, version: 8)
ActivityVertical.create(activity: a_SE12, vertical: v_Cloud, count: 15, version: 8)
ActivityVertical.create(activity: a_SE12, vertical: v_Healthcare, count: 15, version: 8)
ActivityVertical.create(activity: a_SE12, vertical: v_IoT, count: 9, version: 8)
ActivityVertical.create(activity: a_SE12, vertical: v_Insurance, count: 11, version: 8)
ActivityVertical.create(activity: a_SE22, vertical: v_Financial, count: 11, version: 8)
ActivityVertical.create(activity: a_SE22, vertical: v_ISV, count: 18, version: 8)
ActivityVertical.create(activity: a_SE22, vertical: v_Cloud, count: 7, version: 8)
ActivityVertical.create(activity: a_SE22, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_SE22, vertical: v_IoT, count: 9, version: 8)
ActivityVertical.create(activity: a_SE22, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_SE24, vertical: v_Financial, count: 8, version: 8)
ActivityVertical.create(activity: a_SE24, vertical: v_ISV, count: 16, version: 8)
ActivityVertical.create(activity: a_SE24, vertical: v_Cloud, count: 6, version: 8)
ActivityVertical.create(activity: a_SE24, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_SE24, vertical: v_IoT, count: 9, version: 8)
ActivityVertical.create(activity: a_SE24, vertical: v_Insurance, count: 1, version: 8)
ActivityVertical.create(activity: a_SE32, vertical: v_Financial, count: 4, version: 8)
ActivityVertical.create(activity: a_SE32, vertical: v_ISV, count: 8, version: 8)
ActivityVertical.create(activity: a_SE32, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_SE32, vertical: v_Healthcare, count: 3, version: 8)
ActivityVertical.create(activity: a_SE32, vertical: v_IoT, count: 4, version: 8)
ActivityVertical.create(activity: a_SE32, vertical: v_Insurance, count: 2, version: 8)
ActivityVertical.create(activity: a_SE33, vertical: v_Financial, count: 0, version: 8)
ActivityVertical.create(activity: a_SE33, vertical: v_ISV, count: 3, version: 8)
ActivityVertical.create(activity: a_SE33, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_SE33, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_SE33, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_SE33, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_SE34, vertical: v_Financial, count: 0, version: 8)
ActivityVertical.create(activity: a_SE34, vertical: v_ISV, count: 4, version: 8)
ActivityVertical.create(activity: a_SE34, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_SE34, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_SE34, vertical: v_IoT, count: 0, version: 8)
ActivityVertical.create(activity: a_SE34, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_CMVM11, vertical: v_Financial, count: 40, version: 8)
ActivityVertical.create(activity: a_CMVM11, vertical: v_ISV, count: 35, version: 8)
ActivityVertical.create(activity: a_CMVM11, vertical: v_Cloud, count: 15, version: 8)
ActivityVertical.create(activity: a_CMVM11, vertical: v_Healthcare, count: 12, version: 8)
ActivityVertical.create(activity: a_CMVM11, vertical: v_IoT, count: 11, version: 8)
ActivityVertical.create(activity: a_CMVM11, vertical: v_Insurance, count: 6, version: 8)
ActivityVertical.create(activity: a_CMVM12, vertical: v_Financial, count: 41, version: 8)
ActivityVertical.create(activity: a_CMVM12, vertical: v_ISV, count: 37, version: 8)
ActivityVertical.create(activity: a_CMVM12, vertical: v_Cloud, count: 16, version: 8)
ActivityVertical.create(activity: a_CMVM12, vertical: v_Healthcare, count: 15, version: 8)
ActivityVertical.create(activity: a_CMVM12, vertical: v_IoT, count: 11, version: 8)
ActivityVertical.create(activity: a_CMVM12, vertical: v_Insurance, count: 8, version: 8)
ActivityVertical.create(activity: a_CMVM21, vertical: v_Financial, count: 37, version: 8)
ActivityVertical.create(activity: a_CMVM21, vertical: v_ISV, count: 30, version: 8)
ActivityVertical.create(activity: a_CMVM21, vertical: v_Cloud, count: 12, version: 8)
ActivityVertical.create(activity: a_CMVM21, vertical: v_Healthcare, count: 10, version: 8)
ActivityVertical.create(activity: a_CMVM21, vertical: v_IoT, count: 7, version: 8)
ActivityVertical.create(activity: a_CMVM21, vertical: v_Insurance, count: 7, version: 8)
ActivityVertical.create(activity: a_CMVM22, vertical: v_Financial, count: 34, version: 8)
ActivityVertical.create(activity: a_CMVM22, vertical: v_ISV, count: 34, version: 8)
ActivityVertical.create(activity: a_CMVM22, vertical: v_Cloud, count: 16, version: 8)
ActivityVertical.create(activity: a_CMVM22, vertical: v_Healthcare, count: 10, version: 8)
ActivityVertical.create(activity: a_CMVM22, vertical: v_IoT, count: 11, version: 8)
ActivityVertical.create(activity: a_CMVM22, vertical: v_Insurance, count: 6, version: 8)
ActivityVertical.create(activity: a_CMVM23, vertical: v_Financial, count: 21, version: 8)
ActivityVertical.create(activity: a_CMVM23, vertical: v_ISV, count: 19, version: 8)
ActivityVertical.create(activity: a_CMVM23, vertical: v_Cloud, count: 9, version: 8)
ActivityVertical.create(activity: a_CMVM23, vertical: v_Healthcare, count: 7, version: 8)
ActivityVertical.create(activity: a_CMVM23, vertical: v_IoT, count: 5, version: 8)
ActivityVertical.create(activity: a_CMVM23, vertical: v_Insurance, count: 4, version: 8)
ActivityVertical.create(activity: a_CMVM31, vertical: v_Financial, count: 0, version: 8)
ActivityVertical.create(activity: a_CMVM31, vertical: v_ISV, count: 2, version: 8)
ActivityVertical.create(activity: a_CMVM31, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_CMVM31, vertical: v_Healthcare, count: 0, version: 8)
ActivityVertical.create(activity: a_CMVM31, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_CMVM31, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_CMVM32, vertical: v_Financial, count: 2, version: 8)
ActivityVertical.create(activity: a_CMVM32, vertical: v_ISV, count: 2, version: 8)
ActivityVertical.create(activity: a_CMVM32, vertical: v_Cloud, count: 2, version: 8)
ActivityVertical.create(activity: a_CMVM32, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_CMVM32, vertical: v_IoT, count: 2, version: 8)
ActivityVertical.create(activity: a_CMVM32, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_CMVM33, vertical: v_Financial, count: 3, version: 8)
ActivityVertical.create(activity: a_CMVM33, vertical: v_ISV, count: 2, version: 8)
ActivityVertical.create(activity: a_CMVM33, vertical: v_Cloud, count: 1, version: 8)
ActivityVertical.create(activity: a_CMVM33, vertical: v_Healthcare, count: 2, version: 8)
ActivityVertical.create(activity: a_CMVM33, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_CMVM33, vertical: v_Insurance, count: 0, version: 8)
ActivityVertical.create(activity: a_CMVM34, vertical: v_Financial, count: 3, version: 8)
ActivityVertical.create(activity: a_CMVM34, vertical: v_ISV, count: 7, version: 8)
ActivityVertical.create(activity: a_CMVM34, vertical: v_Cloud, count: 6, version: 8)
ActivityVertical.create(activity: a_CMVM34, vertical: v_Healthcare, count: 1, version: 8)
ActivityVertical.create(activity: a_CMVM34, vertical: v_IoT, count: 1, version: 8)
ActivityVertical.create(activity: a_CMVM34, vertical: v_Insurance, count: 2, version: 8)
