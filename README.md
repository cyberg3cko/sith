# Strategic Intelligence for Threat Hunting (SITH)

## Intelligence-Led Adversarial Threat Modelling with VECTR

More and more organisations are beginning to realise the value of ATT&CK. But how can you bring your teams together to help develop and nurture an operational  framework which consistently yields results?

This presentation details the approach developed by the Cyber Threat Intelligence team of a global bank, and how it worked together with defensive and offensive teams to deliver a compelling solution to uplift the organisations' security posture; one adversarial TTP at a time.

The corresponding workshop is designed to provide practical guidance to practitioners that they can adapt for their organisations. Key learning objectives include transforming countermeasure initiatives to be intelligence-led, and developing and deploying a threat library.


[![Intelligence-Led Adversarial Threat Modelling with VECTR](./TitleSlide.png "Intelligence-Led Adversarial Threat Modelling with VECTR")](./Adversarial-Threat-Modelling_Presentation.pdf)


by Sajid Nawaz Khan, _Principal Cyber Threat Intelligence Analyst_

___

## Using VECTR
### Launching VECTR

```

cd /opt/vectr
sudo docker compose up -d

```

Struggling to launch VECTR? Run `sudo docker ps`, `sudo docker stop {containerID}` (or `sudo docker stop $(docker ps -a -q)`) and `sudo docker system prune` and try again.


### Logging into VECTR
You should be able to access VECTR at https://sravectr.internal:8081/. The default username is `admin` and the password is `11_ThisIsTheFirstPassword_11`.


### Safely Shutting Down VECTR
```

cd /opt/vectr
sudo docker compose down

```


## Upgrading VECTR
VECTR is actively maintained, with new features and bug fixes being made available throughout the year. In most cases, upgrading VECTR is as simple as replacing the existing `docker-compose.yml` file within your installation directory (usually `/opt/vectr`), with its newer version — published under the [Releases](https://github.com/SecurityRiskAdvisors/VECTR/releases) section of VECTR’s Github repository.


```

# Safely shut down VECTR
cd /opt/vectr && sudo docker compose down


# Download the latest .zip release package via your browser
# https://github.com/SecurityRiskAdvisors/VECTR/releases
# e.g., sra-vectr-runtime-9.8.3-ce.zip


# Extract, optionally inspect docker-compose.yml
unzip ~/Downloads/sra-vectr-runtime-9.8.3-ce.zip
cat docker-compose.yml


# Move the new docker file to your VECTR install directory, and deploy
sudo mv ./docker-compose.yml /opt/vectr
sudo docker compose up -d

```
