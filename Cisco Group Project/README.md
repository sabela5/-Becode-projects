Network Design and Architecture - Summary
This report presents the design and implementation of a secure, efficient, and scalable network for a client relocating to a new office. The network infrastructure was tailored to meet the specific needs of the client’s departments, including Management, Study, Production, and Support. The design ensures robust security, performance optimization, and cost-effectiveness while allowing room for future scalability. The network design was simulated using Cisco Packet Tracer and the key components include VLAN segmentation, inter-VLAN routing, centralized IP management with DHCP, and RADIUS-based authentication for security.

In today’s cybersecurity landscape, ensuring a secure network architecture is critical to protect against internal and external threats. Common vulnerabilities, such as data breaches, man-in-the-middle (MITM) attacks, and unauthorized access, necessitate a multi-layered defense approach. This network design prioritizes security by implementing VLAN segmentation, ACLs, and RADIUS authentication, providing robust protection while maintaining performance and scalability.

1. VLAN Segmentation:
The network is divided into multiple VLANs, each assigned to a specific sector. This segmentation reduces broadcast traffic, improves performance, and enhances security by isolating sensitive data between departments.

2. Inter-VLAN Routing:
Layer 3 switches were used to enable communication between VLANs while keeping traffic flows under control. This allows efficient routing without needing additional hardware, reducing overall costs.

3. IP Addressing & Subnetting:
The IP addressing scheme is designed with subnetting principles in mind, assigning distinct ranges for each VLAN to facilitate better organization and reduce management complexity. Dynamic addressing is handled via a centralized DHCP server.

4. Security Measures:
The network architecture implements strict security protocols, including Access Control Lists (ACLs) and RADIUS-based centralized authentication to ensure sensitive areas of the network are protected. Additional measures, such as strong password policies and encryption, further secure the infrastructure.

5. Cost Efficiency:
The overall cost of the network, amounting to €38,900, was kept within budget without sacrificing performance or security. Key components, such as Layer 3 switches and virtualized servers for DNS and DHCP, were chosen based on their ability to balance cost-effectiveness with high functionality.

6. Scalability and Flexibility:
The architecture is designed to be scalable, allowing new departments or sectors to be added with minimal reconfiguration. The modular use of VLANs and Layer 3 routing ensures future growth can be supported without major overhauls.

This repository contains all the documentation and simulation files needed to replicate or modify the network. The presentation included in the repository outlines the design process, key decisions made, and the trade-offs considered for security, efficiency, and budget adherence.
