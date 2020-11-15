FROM alpine
ADD log_something.sh /
RUN ["/log_something.sh", "evaluated in run command ( image build )"]

# CMD and ENTRYPOINT cannot run both so if they are both present then the contents of CMD will be sent as 
# parameters to ENTRYPOINT
# CMD ["/log_something.sh", "evaluated in cmd (container start)"]
ENTRYPOINT ["/log_something.sh", "entrypoint evaluated"]
CMD ["container started"]



