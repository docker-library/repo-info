## `sapmachine:25-jre-alpine-3.24`

```console
$ docker pull sapmachine@sha256:251835c325b95d6d4f07ecad56b35e6b958f69a82e9ade2f4d3359f6b26e0f43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-jre-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:da62fa6fa3e18ab83c8f65972b3808cb0dd02ff149dae771726bc15be47ae3f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64391392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb84660fa2080d46b247c56553b965996019bccc2677e1644bd2eb1d579f0d59`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:50:54 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.5.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:50:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Mon, 26 Oct 2026 17:50:54 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d40a280e30c660ed93891f083fe3f0dcb8433f2e8b3c5318aed90da54d5005`  
		Last Modified: Mon, 26 Oct 2026 17:51:06 GMT  
		Size: 60.5 MB (60538283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:88876a6ab946a3041b36b2463f2f1b53ae1a1242c5f4446b8d51ae22de82c9b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.2 KB (440203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652c222ce73cff60aa3f597157756a97bdbaf236d07eec5e854900edf0179399`

```dockerfile
```

-	Layers:
	-	`sha256:79a64fd0453b6b25d01bf44e29faeed07b1d4ff069147678d9597fb565123dfd`  
		Last Modified: Mon, 26 Oct 2026 17:51:04 GMT  
		Size: 432.9 KB (432898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d4d453a075c8327dd42ed5b08c49ae63f25adc681c31d7d6bef94e33c1f12d4`  
		Last Modified: Mon, 26 Oct 2026 17:51:04 GMT  
		Size: 7.3 KB (7305 bytes)  
		MIME: application/vnd.in-toto+json
