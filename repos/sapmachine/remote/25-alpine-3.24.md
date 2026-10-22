## `sapmachine:25-alpine-3.24`

```console
$ docker pull sapmachine@sha256:7c9502889a4c3bad7c2dbd095ac19b842f616d40054b5c774a960c67e7485951
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:c62af67a659b9385628eb3d48269cdd02dca145a6afa0f6f5a8f02d34cbc91b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142249450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f92620c585960543efff0c0a52c1b3e1144d6b1ed611b1056947fcdf6bf113d0`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:04:22 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5-r0 # buildkit
# Wed, 21 Oct 2026 23:04:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Wed, 21 Oct 2026 23:04:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a9c4a384208766b520b05f8f4d2a069b216af8722f34c87fc2d1123be3a43e`  
		Last Modified: Wed, 21 Oct 2026 23:04:38 GMT  
		Size: 138.4 MB (138396341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:84524c5f7f57d8026f77ff1d11b1ff8e0aa7f0d2843c391d83725f5f202bd9bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.7 KB (465717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baed275c42214ca50c3c9e6c6931435b76dbf46847d99a49faf28d6b8315732f`

```dockerfile
```

-	Layers:
	-	`sha256:a84ea58965af7e7b1d509040e0d97b2e18ff8c579b4e0b969ba86deb46d6fe8f`  
		Last Modified: Wed, 21 Oct 2026 23:04:35 GMT  
		Size: 457.4 KB (457447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:737de1d41905c8a8ba21a5738b014f12a33a629e33666af625de9bbf5d344566`  
		Last Modified: Wed, 21 Oct 2026 23:04:35 GMT  
		Size: 8.3 KB (8270 bytes)  
		MIME: application/vnd.in-toto+json
