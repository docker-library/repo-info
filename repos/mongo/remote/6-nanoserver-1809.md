## `mongo:6-nanoserver-1809`

```console
$ docker pull mongo@sha256:d47633dfaf51e3027f9afd49fd4f46bdd0fabdabcfaaef3155d0bd7dd505f9ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `mongo:6-nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull mongo@sha256:5049cea17b1b6b8ef1394dd063edc5917e763689b5a7a8928a467a594948649f
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **619.4 MB (619375107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9ac514c6fcb261d2d6184534f7c058a05d23a7e92b3325bc53d58e3a8197ab`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 03:12:03 GMT
SHELL [cmd /S /C]
# Thu, 12 Jan 2023 04:10:28 GMT
USER ContainerAdministrator
# Thu, 12 Jan 2023 04:11:03 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Thu, 12 Jan 2023 04:11:04 GMT
USER ContainerUser
# Thu, 12 Jan 2023 04:11:05 GMT
COPY multi:4abffac378fdd7fd5082d54935b2f9dc2024a93fc9837ae8701ac6e024ef02ee in C:\Windows\System32\ 
# Thu, 26 Jan 2023 01:23:12 GMT
ENV MONGO_VERSION=6.0.4
# Thu, 26 Jan 2023 01:24:02 GMT
COPY dir:68661c9bc66199176f558318104ff5aa0937d5a9cd22b931af66fda7826a6f78 in C:\mongodb 
# Thu, 26 Jan 2023 01:24:21 GMT
RUN mongod --version
# Thu, 26 Jan 2023 01:24:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 26 Jan 2023 01:24:23 GMT
EXPOSE 27017
# Thu, 26 Jan 2023 01:24:24 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070163efc0c5001bb289dc56cc98506d4d920f7b1eecdd95fad44822625d1509`  
		Last Modified: Thu, 12 Jan 2023 03:50:00 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa79cc8c7933e5e2801bd7e32cf2ec15c495d4c084f894cb6e620f4d72d9f4f`  
		Last Modified: Thu, 12 Jan 2023 04:42:54 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831ebdd21f8d72263638b121334b6d0d7d2e3146b2630be9aae72ca6b56ed0d6`  
		Last Modified: Thu, 12 Jan 2023 04:42:52 GMT  
		Size: 74.6 KB (74603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e649ad9f4edadb284416c870eae927ee2bec76ccaae77676c2541797eb3c8e`  
		Last Modified: Thu, 12 Jan 2023 04:42:52 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e578eeb9dbd53ee94e479a46caa6405215092c071b11118c64468678debe66`  
		Last Modified: Thu, 12 Jan 2023 04:42:52 GMT  
		Size: 267.2 KB (267193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3236f98b2f6ca140883c75f5dd35dc52bdd367b7c93719acdd574953b59bc0b9`  
		Last Modified: Thu, 26 Jan 2023 01:32:48 GMT  
		Size: 1.1 KB (1140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea9b4ffb0f018080a38cc2e7f179956a73eccb65f1ae47cc7ba17765404cc00`  
		Last Modified: Thu, 26 Jan 2023 01:34:21 GMT  
		Size: 512.3 MB (512275694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ebb4595f7a58af1de492369f29b25e8e7b4d62325805f16bb40a9cefef9f43`  
		Last Modified: Thu, 26 Jan 2023 01:32:46 GMT  
		Size: 83.4 KB (83426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f7ee9b8c276a0d7eb81fd6a042c37b7466e2db675c2c4321ebd450002814b8`  
		Last Modified: Thu, 26 Jan 2023 01:32:46 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29215db365099b7efa27f77bd0ccefeb619948568295407295d68476ad58325b`  
		Last Modified: Thu, 26 Jan 2023 01:32:46 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4752da222ce21fa3eac42c8bf0f76407045e14fc38c1485a72a7934796cc730`  
		Last Modified: Thu, 26 Jan 2023 01:32:46 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
