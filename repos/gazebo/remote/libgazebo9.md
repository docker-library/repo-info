## `gazebo:libgazebo9`

```console
$ docker pull gazebo@sha256:5ded5da920b7f7e33aef58cf69815e3fcf295e6cd6dbbfdb785ee8ea4ace9554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `gazebo:libgazebo9` - linux; amd64

```console
$ docker pull gazebo@sha256:b0fa92e526db2f5acd5702582ba83eb2b6d506bac146b3688935dcde9323358d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.8 MB (413822042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7bd9d1bab3866038348c7962dd389ad299b03b66a3cff8381ba00b3b524eef5`
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
# Mon, 02 Jan 2023 19:28:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     gazebo9=9.19.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:28:54 GMT
EXPOSE 11345
# Mon, 02 Jan 2023 19:28:54 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 02 Jan 2023 19:28:54 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 02 Jan 2023 19:28:54 GMT
CMD ["gzserver"]
# Mon, 02 Jan 2023 19:31:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     libgazebo9-dev=9.19.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:9ebdffcd6e9bf1d1e86451633fc139539525d32c6d53321fd3328d6b373bfb63`  
		Last Modified: Mon, 02 Jan 2023 19:35:10 GMT  
		Size: 226.2 MB (226204344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46ca4bb690e6ba868925e30627460b36f9adb5fa7f4a104f741508da70d9e57`  
		Last Modified: Mon, 02 Jan 2023 19:34:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daca3daceae423b0e883494e3c3a3572a782a442ece59a93e5dc0b17d5f2ceb`  
		Last Modified: Mon, 02 Jan 2023 19:35:45 GMT  
		Size: 145.4 MB (145370174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
