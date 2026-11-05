## `sapmachine:lts-jdk-alpine-3.24`

```console
$ docker pull sapmachine@sha256:5108d24a9643ae571bf5f1797fecb680a9249c45da17205efbaf4bb66d7eb692
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-jdk-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:8b6325b35e58ffe753a5b5008d3fc42dd3c9b06ffa9c06c367627d1cda045cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.4 MB (229408993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34671f6a9778745f32391ded26d4b43edaeb897053927a60d17789d30d41c4a0`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:19 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Thu, 05 Nov 2026 19:36:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:382ebe435a2135fb542ee61fdf1845f552a68c6c3c8079059adeeac9eba57275`  
		Last Modified: Thu, 05 Nov 2026 19:36:39 GMT  
		Size: 225.6 MB (225555320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c7b3535f5ee1ed704470edec67763c5aa1843c04f3c799a39c5a39087a75dbf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **511.0 KB (510974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1065cf2ecbe7f5770d153434ad1e3094dd99828682e625fa4d0ec5c371ccde08`

```dockerfile
```

-	Layers:
	-	`sha256:07d6fc29fc20a61084a3356befb21a00511b4a1a76c7ac6c8a337df29d402b94`  
		Last Modified: Thu, 05 Nov 2026 19:36:34 GMT  
		Size: 502.7 KB (502676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f342089dfb45313324a8b811311f6f1459c607a249a7110dc0757c6821a243c`  
		Last Modified: Thu, 05 Nov 2026 19:36:34 GMT  
		Size: 8.3 KB (8298 bytes)  
		MIME: application/vnd.in-toto+json
