## `amazoncorretto:8u504-al2-generic`

```console
$ docker pull amazoncorretto@sha256:09a828df00aff309002cb84cd1695f64ff2740766f359fda5f155a306abc2c4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f95d80a1808b8a6886dcd1df90091b6ebb5665829e90343c5f2db6d58d0a4a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124669165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ffd420ec2555338cc29500522d0a2c41111c6085d67e3317cfcb69154e569c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:15:31 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:15:31 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 20 Aug 2026 17:15:31 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ced3ada297c5d7a774bba43cef33e71c3a3f2d532763e9717e6c619dcd5a17`  
		Last Modified: Thu, 20 Aug 2026 17:15:46 GMT  
		Size: 59.9 MB (59880049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8c5c275ee136044bb2aa24bf2edf061090e4c89852bd03370dee512862e844d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e36d348c49cdb9526b857bc40a5142b29820a2694d7827e511a54695ff448a`

```dockerfile
```

-	Layers:
	-	`sha256:844aa2de97e6c2f9f9f75d72fe61489ae79e19fb677748c96011f9fe85fa282a`  
		Last Modified: Thu, 20 Aug 2026 17:15:45 GMT  
		Size: 5.4 MB (5355332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cedbb6db3dd6c28d47973adada46429c86cd8baabac89ccb11940912153595f`  
		Last Modified: Thu, 20 Aug 2026 17:15:44 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
