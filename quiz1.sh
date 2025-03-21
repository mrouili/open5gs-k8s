# #!/bin/bash

# # Initialize score
# score=0

# # Function to ask a question
# ask_question() {
#     question="$1"
#     options=("$2" "$3" "$4" "$5")
#     correct_answer="$6"

#     echo "$question"
#     echo "1) ${options[0]}"
#     echo "2) ${options[1]}"
#     echo "3) ${options[2]}"
#     echo "4) ${options[3]}"

#     read -p "Enter your choice (1-4): " user_answer

#     if [ "$user_answer" == "$correct_answer" ]; then
#         echo "Correct!"
#         ((score++))
#     else
#         echo "Wrong answer!"
#     fi
#     echo ""
# }

# # Quiz Questions
# ask_question "1. What does UERANSIM simulate?" \
#              "5G Core Network" "5G gNB and UE" "PHY and MAC layers" "Full 5G Stack" 2

# ask_question "2. Which protocol does UERANSIM use to emulate the radio link?" \
#              "TCP" "GTP" "UDP" "ICMP" 3

# ask_question "3. What is a major limitation of UERANSIM?" \
#              "High CPU usage" "Does not simulate a PHY layer" "Only works with Open5GS" "Requires SDR hardware" 2

# ask_question "4. Compared to full stack 5G RAN implementations, UERANSIM tends to:" \
#              "Overestimate throughput" "Underestimate latency" "Not account radio channel conditions" "All of the above" 4

# ask_question "5. What would be a valid use case for UERANSIM?" \
#              "Intelligent radio resource allocation" "Evaluating a 5G network security application" "Analyzing RF interference" "Emulating large-scale 5G deployments" 2

# # Display final score
# echo "Quiz completed! Your final score is: $score / 5"

# # Provide feedback
# if [ "$score" -eq 5 ]; then
#     echo "Excellent!"
# elif [ "$score" -ge 3 ]; then
#     echo "Good job! You have a decent understanding."\else
#     echo "Keep learning and feel free to ask questions! "
# fi





#!/bin/bash

# Initialize score
score=0

# Function to ask a question
ask_question() {
    question="$1"
    options=("$2" "$3" "$4" "$5")
    correct_answer="$6"

    echo "$question"
    echo "1) ${options[0]}"
    echo "2) ${options[1]}"
    echo "3) ${options[2]}"
    echo "4) ${options[3]}"

    read -p "Enter your choice (1-4): " user_answer

    if [ "$user_answer" == "$correct_answer" ]; then
        echo "Correct!"
        ((score++))
    else
        echo "Wrong answer, The correct answer was: ${options[$((correct_answer - 1))]}"
    fi
    echo ""
}

# Quiz Questions
ask_question "1. What does UERANSIM simulate?" \
             "5G Core Network" "5G gNB and UE" "PHY and MAC layers" "Full 5G Stack" 2

ask_question "2. Which protocol does UERANSIM use to emulate the radio link?" \
             "TCP" "GTP" "UDP" "ICMP" 3

ask_question "3. What is a major limitation of UERANSIM?" \
             "High CPU usage" "Does not simulate a PHY layer" "Only works with Open5GS" "Requires SDR hardware" 2

ask_question "4. Compared to full stack 5G RAN implementations, UERANSIM tends to:" \
             "Overestimate throughput" "Underestimate latency" "Not account radio channel conditions" "All of the above" 4

ask_question "5. What would be a valid use case for UERANSIM?" \
             "Intelligent radio resource allocation" "Evaluating a 5G network security application" "Analyzing RF interference" "Emulating large-scale 5G deployments" 2

ask_question "6. Which of the following layers and protocols is implemented in UERANSIM?" \
             "RRC" "eCPRI" "F1AP" "PHY" 1

ask_question "7. What kind of traffic does UERANSIM simulate in the user plane?" \
             "Real I/Q radio samples" "UDP-based IP packets" "TCP raw sockets" "ICMP pings" 2

ask_question "8. What is a parameter that needs to match between the gNB and core configuration ?" \
             "IMSI" "eNodeB ID" "GTP version" "S-NSSAI" 4

ask_question "9. According to the O-RAN standards, which interface does the gNB use to communicate with the AMF?" \
             "N1" "N2" "N3" "S1" 2

ask_question "10. What happens when UERANSIM establishes a PDU session successfully?" \
             "UE reboots" "gNB sends NAS release" "A TUN interface is created on the UE" "Data is sent over GTP tunnel" 3

# Display final score
echo "Quiz completed! Your final score is: $score / 10"

# # Provide feedback
# if [ "$score" -eq 10 ]; then
#     echo "Excellent! You really know your UERANSIM."
# elif [ "$score" -ge 7 ]; then
#     echo "Great job! You're well on your way."
# elif [ "$score" -ge 5 ]; then
#     echo "Good effort! You have a decent understanding."
# else
#     echo "Keep learning and feel free to ask questions!"
# fi