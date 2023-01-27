## `mongo:5-nanoserver`

```console
$ docker pull mongo@sha256:6df8d118a8597309d2ffe6a4476d8cc3c1fe20a6ce2960c746787a5ea2fa2801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `mongo:5-nanoserver` - windows version 10.0.20348.1487; amd64

```console
$ docker pull mongo@sha256:24278498047c7b81c1aa16df7cd9ca40d8321663432b6f528db6d3bed77a99ad
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432218449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65bcdafbdb06c4c18f1fe79a244e1c7d71296a7c71f560575c034409f9a55f3b`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Fri, 06 Jan 2023 23:36:49 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 03:07:34 GMT
SHELL [cmd /S /C]
# Thu, 12 Jan 2023 04:07:43 GMT
USER ContainerAdministrator
# Thu, 12 Jan 2023 04:08:26 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Thu, 12 Jan 2023 04:08:27 GMT
USER ContainerUser
# Thu, 12 Jan 2023 04:17:40 GMT
COPY multi:9a4a91c322ba6325a22891e3a40eb7306a49c53e11d5828931f2326770a3f548 in C:\Windows\System32\ 
# Thu, 12 Jan 2023 04:17:41 GMT
ENV MONGO_VERSION=5.0.14
# Thu, 12 Jan 2023 04:18:16 GMT
COPY dir:e35592cc21ade3cccd2a05122103ef64998dd68366a249105c90037f275f3b5b in C:\mongodb 
# Thu, 12 Jan 2023 04:19:02 GMT
RUN mongo --version && mongod --version
# Thu, 12 Jan 2023 04:19:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 12 Jan 2023 04:19:04 GMT
EXPOSE 27017
# Thu, 12 Jan 2023 04:19:05 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:83e9437e818022c1c28f0e07002dd46995c8614e62b9366138fa23b94f43d9ad`  
		Last Modified: Thu, 12 Jan 2023 02:51:06 GMT  
		Size: 122.1 MB (122099566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e0e139d1c09b743fda52fd8a19bdc3c829ac2aed829d2e16beec0fbbd5dd5d`  
		Last Modified: Thu, 12 Jan 2023 03:48:59 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f52222b54787457572d99db7ae10e4c9512dafbe7ba244b0969616e6ac8be1`  
		Last Modified: Thu, 12 Jan 2023 04:40:59 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22763c78aa844e4b52e36432c545ee28797056da12caa5444e6d4a90bef22859`  
		Last Modified: Thu, 12 Jan 2023 04:40:58 GMT  
		Size: 96.5 KB (96468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4a405601da327afce0142718dcaeaa3dbb5563a90b9abaaeff0770d008467`  
		Last Modified: Thu, 12 Jan 2023 04:40:58 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b298a668d7d41bb3a11b049a03a49686c7bc6e48bf87d764725553e05601b3`  
		Last Modified: Thu, 12 Jan 2023 04:47:16 GMT  
		Size: 263.5 KB (263531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94da339b2706577936ef18f3e85e0d1bf90ea18ee2ae7fbbcb0e8324435ea0fb`  
		Last Modified: Thu, 12 Jan 2023 04:47:16 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fddce7221adf9bf258639ef5caf520f27cd6e3cfc9ec746a0b2368085aa14b`  
		Last Modified: Thu, 12 Jan 2023 04:48:16 GMT  
		Size: 309.7 MB (309692034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b792b786f5c274cd768f238d3065ae605b581cff71604eed5544510caf476aa`  
		Last Modified: Thu, 12 Jan 2023 04:47:14 GMT  
		Size: 58.8 KB (58848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aabfbbad48e11d7abe1e732f26163d301cb2c08db54d92fa991e23c5489c3cd`  
		Last Modified: Thu, 12 Jan 2023 04:47:14 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8727c5cf02d034350113ca2038af1a9ca2388ce55245f92570365e805fcc7f`  
		Last Modified: Thu, 12 Jan 2023 04:47:14 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2e3cc379559e6403ff7bf6898e0da88c1f0a41d07cfefe653e6218786b9d78`  
		Last Modified: Thu, 12 Jan 2023 04:47:14 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:5-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull mongo@sha256:c920bcaa2c52f254bd64c9d99343a5e14fb313438de51a2b7f58c14f33cd1619
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.8 MB (416785090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d0eda1a96f9f5ddd4de4c6fa8a5f8c62dd2b1878462ff68d10f063bfd8ca736`
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
# Thu, 12 Jan 2023 04:19:28 GMT
COPY multi:9a4a91c322ba6325a22891e3a40eb7306a49c53e11d5828931f2326770a3f548 in C:\Windows\System32\ 
# Thu, 12 Jan 2023 04:19:29 GMT
ENV MONGO_VERSION=5.0.14
# Thu, 12 Jan 2023 04:20:06 GMT
COPY dir:e35592cc21ade3cccd2a05122103ef64998dd68366a249105c90037f275f3b5b in C:\mongodb 
# Thu, 12 Jan 2023 04:20:43 GMT
RUN mongo --version && mongod --version
# Thu, 12 Jan 2023 04:20:44 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 12 Jan 2023 04:20:45 GMT
EXPOSE 27017
# Thu, 12 Jan 2023 04:20:46 GMT
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
	-	`sha256:589b4902461b707c9e990a2bf2271f2b7555a69c597f23d4985ba1082e2d39a3`  
		Last Modified: Thu, 12 Jan 2023 04:48:29 GMT  
		Size: 263.5 KB (263483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3579b843215d0d1eb955621628dd855d209d35e11bf2e718139f62576f0175`  
		Last Modified: Thu, 12 Jan 2023 04:48:29 GMT  
		Size: 1.1 KB (1095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ecad8bf0ea99a356cc043f68e5321166eac8805cbd1329bc71b1a1825d02ef`  
		Last Modified: Thu, 12 Jan 2023 04:49:32 GMT  
		Size: 309.7 MB (309692143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf953ba02133f0e2c83646aaa55308dc8beca9b8fd4b84f8c52a0407eb3522f`  
		Last Modified: Thu, 12 Jan 2023 04:48:27 GMT  
		Size: 80.9 KB (80940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215863853b032e68cbd09e087ae122345f5e8247f67ba596eabc8458f507f327`  
		Last Modified: Thu, 12 Jan 2023 04:48:27 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efaa7176f657d8e2c3a07c54a8167fce941c512bd6bdb4a27d91b9fd06be6bd`  
		Last Modified: Thu, 12 Jan 2023 04:48:27 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76902b34f5cfc939285134756d3f81df040bd1b8620236e4ccb62e26174970a`  
		Last Modified: Thu, 12 Jan 2023 04:48:27 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
