## `mongo:nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:10006bb8fe3e4c474295b3f18a6963a86c819b63423c6dfebea13b24ccc4cdf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:8d27a8d86ae88aed45853a499322119093c16a2835bc2ce28fec279fc5280d81
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1046076909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db75bda4433f20ee81ef7f3016d54d9ad5ae010566911247ac8bc4da48ee324`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:17:06 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:17:07 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:12 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 18:17:13 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:14 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Wed, 12 Aug 2026 18:17:14 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 18:18:01 GMT
COPY dir:ab77c6d81d0785876e1421f184877c7fedc2c701e07d5fc54386b3eabb2260f7 in C:\mongodb 
# Wed, 12 Aug 2026 18:18:31 GMT
RUN mongod --version
# Wed, 12 Aug 2026 18:18:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:18:31 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:18:32 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79388e9f0c7a7b81672d85cc13af6d7435f432f4b9f84ded222fd016b740e29`  
		Last Modified: Wed, 12 Aug 2026 18:18:43 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299c7cd2287c2e7be5f7ea513798fda6c446af7938f168364fbba6b0b384da66`  
		Last Modified: Wed, 12 Aug 2026 18:18:42 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a2007db7310b136e198e6fb0a0bdadf72b96fd667ef2c76569441e7e6e87ab`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 85.6 KB (85551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dec53872fb11bc03e878fd9a3030acf00c3833399acd71cff3b0ededae12895`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee48c97c28e98b05b10575a212622350f86a4a4f776fa9e465693d909d99e0`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 300.4 KB (300394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f017403c87b2d22944e969ce96e8dff742c5a6449e6e115fd536ccd9544168ac`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd154211ab48faf46fd48cb2ead55f13020915411d03a0d4d6dbba3061bc5bfd`  
		Last Modified: Wed, 12 Aug 2026 18:19:55 GMT  
		Size: 921.3 MB (921339072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea74e932f4e1e9eac5f7229d063e28e62d214bf9852face97e16db051b49cb0`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 86.5 KB (86533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb98c0dc34ed76e844e9a3104ce1fe50b700c6720a49cd8282ba74f6edc37310`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48439a909f5c178dcc33e969fd4b31d1f22268779683bf457cc43a3603cb5333`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80efb159cdfba3669913a2ab5dbea05599620f788ef2c46a0698ce5e48860384`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
