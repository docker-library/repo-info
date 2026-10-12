## `telegraf:latest`

```console
$ docker pull telegraf@sha256:aedc74ac64c623b6e6760545a8ff56a63b99a798bba3d361279a2887642798cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:3b35efa17262932c24419287d1cb52e29e5a11d62763975de577063800aba4e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182688797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8636faa76f8a56abdfd311e56224e22ac7681fff4d456ee55ed6073c9b819054`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 18:23:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 18:23:35 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 12 Oct 2026 18:23:40 GMT
ENV TELEGRAF_VERSION=1.40.2
# Mon, 12 Oct 2026 18:23:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 12 Oct 2026 18:23:40 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 12 Oct 2026 18:23:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 18:23:40 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 12 Oct 2026 18:23:40 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60aef241f9d4f2823fb79c0c4be102767d4727eae16310492d8a19a8598647e1`  
		Last Modified: Mon, 12 Oct 2026 18:24:01 GMT  
		Size: 21.6 MB (21590853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f306f7413067c82bba9a648ba1f92d3a6538495315a06e221b1eb8b648f855`  
		Last Modified: Mon, 12 Oct 2026 18:24:00 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2727f2202e2dea8e3ff240aa0888f32f94fd2f1d29ace0b90f1f98a816b64ed1`  
		Last Modified: Mon, 12 Oct 2026 18:24:03 GMT  
		Size: 88.7 MB (88701973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96926123ec14d39cc2c0c4ea1a7df253180e82b7c4ae70de3d8c516113ae15b2`  
		Last Modified: Mon, 12 Oct 2026 18:24:00 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:d750a4dbacbbc6be06ee802c95ac0b06a9e88ecf707f43e1f190e43d2f14d07d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80ef1d3d7408ce7785560aef7f85d93678a89d77cde834261b53bbb2f124bf1`

```dockerfile
```

-	Layers:
	-	`sha256:084ac5f59ea4c29541b4923c8905756be2d2fe73b3ca15a2fe55f43b284373ab`  
		Last Modified: Mon, 12 Oct 2026 18:24:00 GMT  
		Size: 6.7 MB (6691307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5567aa789437a46af898acd43182d24d87659e1570d319db6bd10d1045c71e5`  
		Last Modified: Mon, 12 Oct 2026 18:24:00 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:caba59574da187966279084b95fe04802db8e79481cdb1cb88f410e0533a02d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168570710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae9e3683a8528498c50615e3f4662a24571a1d9bbb0ee7aae7f65fd3ceefcb4`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 18:17:20 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 18:17:21 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 12 Oct 2026 18:17:27 GMT
ENV TELEGRAF_VERSION=1.40.2
# Mon, 12 Oct 2026 18:17:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 12 Oct 2026 18:17:27 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 12 Oct 2026 18:17:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 18:17:27 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 12 Oct 2026 18:17:27 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0b4fe1bd112474a18832369b19dfb77e56f52e4f63f45ef43c16c1d85d92dc`  
		Last Modified: Mon, 12 Oct 2026 18:17:46 GMT  
		Size: 20.0 MB (20048298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac063b8d207a13972b2ce1078f39df2c1742264b8d219dd26bfbe81490c8d80b`  
		Last Modified: Mon, 12 Oct 2026 18:17:45 GMT  
		Size: 5.1 KB (5054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc06330751d17e25caf23d0f774449e30b3a1d1118b638b54c087247bc28f45`  
		Last Modified: Mon, 12 Oct 2026 18:17:48 GMT  
		Size: 82.5 MB (82527808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93377dbcb51653ff5b12151fa6f9ef009385dfd16595df737d207cbaef43e199`  
		Last Modified: Mon, 12 Oct 2026 18:17:45 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:40971fc636ac6911de03f0abd808d1522a9e1a95bb7bab68523d8a1730809ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f0f66b8bc49418d1c8619e668e244e5691e716329e2a1b065a320a954a0f8f6`

```dockerfile
```

-	Layers:
	-	`sha256:7556af68591901309f4498a811a44d556b5c0271659c5714d0140f3d1dbdbd43`  
		Last Modified: Mon, 12 Oct 2026 18:17:46 GMT  
		Size: 6.7 MB (6686717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f746b46d63c7909f46406693427e142af873b1e70655d2b03b3ba0f201558f8`  
		Last Modified: Mon, 12 Oct 2026 18:17:45 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:ea3a4131725ef948ec67287c6199c48db55902946b32d525d4900646aa1b6810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172546032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f352a228eab215b9524cea9b5e592dc85e54e9ba33dcae05187d39d6c52bbf45`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 18:25:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 18:25:36 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 12 Oct 2026 18:25:40 GMT
ENV TELEGRAF_VERSION=1.40.2
# Mon, 12 Oct 2026 18:25:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 12 Oct 2026 18:25:40 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 12 Oct 2026 18:25:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 12 Oct 2026 18:25:40 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Mon, 12 Oct 2026 18:25:40 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fff2cec0a6755b302422d63ee8724a925c13f7174a10a0052d1ece6c6f514ad`  
		Last Modified: Mon, 12 Oct 2026 18:25:59 GMT  
		Size: 21.5 MB (21454182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4786f2faf675a4a7fb47063f650102b38f7705a800989ab462b242aedc6b84`  
		Last Modified: Mon, 12 Oct 2026 18:25:58 GMT  
		Size: 5.1 KB (5065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d344827999eafba0733115a2f819d760f41b3e1d6c051dc77d63051092463f`  
		Last Modified: Mon, 12 Oct 2026 18:26:00 GMT  
		Size: 79.2 MB (79242177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:462544e2fa4b3e66b03d6ac97bd9c5a038c292f58c7bfe394d456ceeaacf2563`  
		Last Modified: Mon, 12 Oct 2026 18:25:58 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:fc9c3e69b17fd007c470156c03b310af718f607402318f76e393929ed093a28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cb2645a03e57d30a9d984d81a1617ef32f3225b845d9fa01d782332d34deb5`

```dockerfile
```

-	Layers:
	-	`sha256:3497a2f10fd3a79cc2533fe8011c6e23c3555bd7a37821d5364deee0301f8681`  
		Last Modified: Mon, 12 Oct 2026 18:25:58 GMT  
		Size: 6.7 MB (6691995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bf3e1517fc84b3c497a8bbc2e751801b3fae02b565d21a8be4516d532be2140`  
		Last Modified: Mon, 12 Oct 2026 18:25:58 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json
