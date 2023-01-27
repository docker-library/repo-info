## `gazebo:libgazebo11-bionic`

```console
$ docker pull gazebo@sha256:7d6f2ebbddc97c09b19912869d7bb987fa3ec2d648cb227a9262179bfc78d320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `gazebo:libgazebo11-bionic` - linux; amd64

```console
$ docker pull gazebo@sha256:9cbf0c9bff033eafe666dcf5377a4653effbd728cc7eddc03d2a639900317dd9
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.3 MB (547305771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c2ba3ff0dbb8e9690dde49ec90500132ffd41f25bae2d3ebefc90a34387560`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:26:09 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:26:19 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:26:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 02 Jan 2023 19:26:21 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 02 Jan 2023 19:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     gazebo11=11.12.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:32:09 GMT
EXPOSE 11345
# Mon, 02 Jan 2023 19:32:09 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 02 Jan 2023 19:32:09 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 02 Jan 2023 19:32:09 GMT
CMD ["gzserver"]
# Mon, 02 Jan 2023 19:34:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     libgazebo11-dev=11.12.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c951368bd41b82d2e183383475cc4c2799e5a1c144b2afdc583c8d4aa68cd2`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 819.0 KB (819013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1f8aea3249cb31dd5d07f513c5a8f5d98b99de562c77189e5798d40308569f`  
		Last Modified: Mon, 02 Jan 2023 19:34:45 GMT  
		Size: 14.7 MB (14709984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7c95c378168a35dc43101cf58dcbb48d0337a2f2ace8e817979fe82057ffab`  
		Last Modified: Mon, 02 Jan 2023 19:34:43 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c03399e9a0541954a23ce07fc82667300e2b4eb53b0dd96387310ab674d738c`  
		Last Modified: Mon, 02 Jan 2023 19:34:43 GMT  
		Size: 5.5 KB (5459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ad3e7bd85fa131998d3ab51c691f44f79fa58b43a88d47a4e28036016ba30d`  
		Last Modified: Mon, 02 Jan 2023 19:36:21 GMT  
		Size: 235.6 MB (235577844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95900ed15b00e47892af95f35e2b633cdb99d19e6460588a816e89341f6a329`  
		Last Modified: Mon, 02 Jan 2023 19:35:53 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d506291cd8b47597ab68a0b98d60f62fadced28c3996188801d294950e41eed`  
		Last Modified: Mon, 02 Jan 2023 19:37:05 GMT  
		Size: 269.5 MB (269480403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
