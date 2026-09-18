## `sapmachine:21-jre-alpine`

```console
$ docker pull sapmachine@sha256:31c8c5c6dc9a6907e29628cbad0c6f3c568c5d6d00e5c61a96ea409ae24545fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:41da20ad0b8b6326ba629eb82d175ed355c86302d61cfe8f0d056f981ec4235d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66873534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a123ca30740c0fc07c879e1b0cb8cf25a1474ae10ed26477438f852eb6e85f46`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:21 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.12.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Thu, 17 Sep 2026 21:57:21 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a556de2bc1b7efb01ba2b77eb33b48c81ad45eb161b7fb5cc1c6cf75b8ce80b9`  
		Last Modified: Thu, 17 Sep 2026 21:57:33 GMT  
		Size: 63.0 MB (63025027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5f63ed8b678b3acb4a999fe9dd8c7e22ef3d6202c33397103c4713f07ee3c07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.2 KB (436210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a33a755dc65f8dc82697c0bc81a12d4c889cc93434cc42f9d2075214698c17`

```dockerfile
```

-	Layers:
	-	`sha256:16cd9bfcacdd784c2094168e63e47676bfc359fbd4ee77c3a0a981c79e61f2a7`  
		Last Modified: Thu, 17 Sep 2026 21:57:32 GMT  
		Size: 428.6 KB (428588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ba483be1659d031c2c3fc6b24b7a335b2e4d95ccf4cd138599a4cf7a6945e7a`  
		Last Modified: Thu, 17 Sep 2026 21:57:32 GMT  
		Size: 7.6 KB (7622 bytes)  
		MIME: application/vnd.in-toto+json
