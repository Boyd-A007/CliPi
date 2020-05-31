import configparser, logging

config = configparser.ConfigParser()
configFilePath = r'clipi.cfg'
config.read(configFilePath)

nodename = config.get('node','name')
sensorpin = config.get('node','sensorpin')
pollingint = config.get('node','polling')
masternode = config.get('node','master')
logfile = config.get('node','logfile')

logger = logging.getLogger(nodename)
hdlr = logging.FileHandler(logfile)
formatter = logging.Formatter('%(asctime)s %(levelname)s %(msg)s')
hdlr.setFormatter(formatter)
logger.addHandler(hdlr)
logger.setLevel(logging.INFO)

print(logfile)
logger.info("...CliPi Startup...")
logger.info("Node Name: " + nodename)
logger.info("Sensor Pin: " + sensorpin)
logger.info("Polling Interval: " + pollingint)
logger.info("Master Node: " + masternode)
