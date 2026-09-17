## `sapmachine:27-jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:dd9869900143a9d20647c74ad904c36e6ed17c753d7d85e3e9a54c10cb679129
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:6fcb2adeaf7754b8d286651e3afa83c1cdbd30d9c5a6a160ec2b0189da9ca5fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63967127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3580891b00f15fc045f2c3ec7707d3ad7bbcb3a2ab7d7e01fe2fd33a968980bb`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:36:14 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27-r0 # buildkit
# Wed, 16 Sep 2026 16:36:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Wed, 16 Sep 2026 16:36:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571db3dbb2e9490fa19884ab39ee931e26fab53f40ab6ee2973edcdc43bce31b`  
		Last Modified: Wed, 16 Sep 2026 16:36:27 GMT  
		Size: 60.2 MB (60179532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1620392956362ee0a20146211062731bcd76ade2ef02fd32f3de928435e380f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.8 KB (436809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f437d081488c7d5487ef80f312622e6787241dbbfca7771fc317215c5005b637`

```dockerfile
```

-	Layers:
	-	`sha256:1f18aa4fb967e87bbb2d7d6b6cdf0559fac45eb71d26a382cd1a4865487e7184`  
		Last Modified: Wed, 16 Sep 2026 16:36:25 GMT  
		Size: 429.9 KB (429875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d297ec735ba545b895222505f8cf49d9e236657c567e1bd728d904249801bf50`  
		Last Modified: Wed, 16 Sep 2026 16:36:25 GMT  
		Size: 6.9 KB (6934 bytes)  
		MIME: application/vnd.in-toto+json
