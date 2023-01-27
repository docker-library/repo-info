## `gazebo:gzserver11`

```console
$ docker pull gazebo@sha256:dbfda1e652164a39f975d17eb60829078ea80804ad89bff69fbfe398e154361b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `gazebo:gzserver11` - linux; amd64

```console
$ docker pull gazebo@sha256:4f644682bc04892cd5ed315349e1233609d1733054021a1bb568a7449da661d7
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321939079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b60487a7bab6d538c67a610833150f06636ecf2091faa5cf55f2848c254cb1b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:05:57 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update &&     apt-get install -q -y --no-install-recommends tzdata &&     rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:06:22 GMT
RUN apt-get update && apt-get install -q -y --no-install-recommends     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:06:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 09 Dec 2022 02:06:24 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 09 Dec 2022 02:09:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     gazebo11=11.12.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:09:33 GMT
EXPOSE 11345
# Fri, 09 Dec 2022 02:09:33 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Fri, 09 Dec 2022 02:09:33 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 09 Dec 2022 02:09:33 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caabce4ffd25edf36993bf0280efcd423502afe7b8c7b2da5782388b72f81a89`  
		Last Modified: Fri, 09 Dec 2022 02:17:31 GMT  
		Size: 1.2 MB (1154736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9407eeb625fe2c900e470fa908d7ee55e09017864dca28a5f9c72573a9d52257`  
		Last Modified: Fri, 09 Dec 2022 02:17:31 GMT  
		Size: 16.2 MB (16175005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706ba6387149bce96634a8370740ed6e6b7a6d2c90347fceebf004911f0531d7`  
		Last Modified: Fri, 09 Dec 2022 02:17:28 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3898ee161b0b01c4a45afe98f7cc2de8d3158a83500e82d97e543b87fd956963`  
		Last Modified: Fri, 09 Dec 2022 02:17:29 GMT  
		Size: 5.5 KB (5504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afdea06022fc2980019e69cc7f1d45b745990e698f0e24c365e824308c34338`  
		Last Modified: Fri, 09 Dec 2022 02:18:02 GMT  
		Size: 276.0 MB (276025324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467d7154411fabc35faef4ae0ee98db0d7a89ce3c8aca8d86caf384c532aaf9d`  
		Last Modified: Fri, 09 Dec 2022 02:17:29 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
