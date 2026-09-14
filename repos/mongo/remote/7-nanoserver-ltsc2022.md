## `mongo:7-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:912f1626babc2bc9253b7091f5e06b3f242e0e00e38ae2be9082f6522df3b0df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `mongo:7-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull mongo@sha256:671f2dce71ccb8a4c8034d39b7fc69a1e27a4afeab997e36cfea8c112acfaaff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **750.4 MB (750412796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e974b3a2ad0176358a4dde921977fa042dfd4f3013e586059855d30366cf78dc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 14 Sep 2026 19:08:21 GMT
SHELL [cmd /S /C]
# Mon, 14 Sep 2026 19:08:21 GMT
USER ContainerAdministrator
# Mon, 14 Sep 2026 19:08:37 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Mon, 14 Sep 2026 19:08:37 GMT
USER ContainerUser
# Mon, 14 Sep 2026 19:08:39 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Mon, 14 Sep 2026 19:08:40 GMT
ENV MONGO_VERSION=7.0.43
# Mon, 14 Sep 2026 19:12:47 GMT
COPY dir:779fc6ca6ffd2fe57ad826007930f4cb6c651b6d7df40d037d622e0557ff6982 in C:\mongodb 
# Mon, 14 Sep 2026 19:13:04 GMT
RUN mongod --version
# Mon, 14 Sep 2026 19:13:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Sep 2026 19:13:05 GMT
EXPOSE 27017
# Mon, 14 Sep 2026 19:13:06 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d838cc8ba4c154ea7ec1b0d4d216ea663760788cac1141384d167b3867c25e7`  
		Last Modified: Mon, 14 Sep 2026 19:13:23 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edacdefc9395d8df2ced50c7997c1f4f9f7d824fca8b23492d7b6ab70135ad6`  
		Last Modified: Mon, 14 Sep 2026 19:13:23 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9342183809f6429f99cfedd1f48560c79b5c1aca9e367446324068eb75bd36`  
		Last Modified: Mon, 14 Sep 2026 19:13:22 GMT  
		Size: 73.9 KB (73912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf671fb7b1dab2999b1e96152f71bf156512095f7d18999cc7a6b67350fe49bf`  
		Last Modified: Mon, 14 Sep 2026 19:13:22 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c53e130e97d2ad7c8175b1b715b45b3f933bff82433e097b24890459c12094`  
		Last Modified: Mon, 14 Sep 2026 19:13:22 GMT  
		Size: 275.2 KB (275182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13584987938b030a4ea2160138c511a26ad452078dde387b657d2d6693cced0d`  
		Last Modified: Mon, 14 Sep 2026 19:13:22 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5e89cdbe6a280c2cced679c3f4f900fa7fa09b6f72deefb3a9a17fcef759ea`  
		Last Modified: Mon, 14 Sep 2026 19:14:09 GMT  
		Size: 625.3 MB (625330263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cbd5b1ca28438a96f4fb491372949a0469a09920585f0fff8ee2e6f387401e`  
		Last Modified: Mon, 14 Sep 2026 19:13:20 GMT  
		Size: 88.6 KB (88607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee8e182ef75eef390f1ce3f760efd0516ec69ecdeabe83510f9f5b7ce239c55`  
		Last Modified: Mon, 14 Sep 2026 19:13:20 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4ff68ccf40e0c0b820679b9e0bbcd42914d6d4db410216e57b8dacb8bd3a52`  
		Last Modified: Mon, 14 Sep 2026 19:13:20 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ff0fc5979c599af3bbdcd9fa749ce8814f96380702274f9309741fff62b71a`  
		Last Modified: Mon, 14 Sep 2026 19:13:20 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
