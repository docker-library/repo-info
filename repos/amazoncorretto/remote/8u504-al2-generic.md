## `amazoncorretto:8u504-al2-generic`

```console
$ docker pull amazoncorretto@sha256:1353c62e757770d4e1fa73a8aa98868dfe5740f7f002c8a20971753c8d0fd521
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d67a132ccc7bafb448441fa2266673f27bcdc7552060bc02137d701592cd1641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123052736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d2ff0a822c76f4312ff59accd684f36ec827fb82e64bddd49e5be7f5efd04a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:29:06 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:29:06 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:10:56 GMT
ARG version=1.8.0_504.b01-1
# Thu, 27 Aug 2026 19:10:56 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 27 Aug 2026 19:10:56 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:10:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:7b5924e8d322730e9c4e8894d8783a6efb8f7553b1186599f35e97dfa4b7372d`  
		Last Modified: Thu, 27 Aug 2026 17:56:29 GMT  
		Size: 63.0 MB (62973824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fb3e52d5ba162beb2326e60fbade360fc83c389c689d8e8e02f02147452dae`  
		Last Modified: Thu, 27 Aug 2026 19:11:11 GMT  
		Size: 60.1 MB (60078912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c7d480fa788dd2d78c3b7810f98ca7693775f0074905f94aefc7d43fa119d2f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0a8544a3fca00b8f99b4bfab65e964f47cdfe189fd643beccfcf19f66dd82c`

```dockerfile
```

-	Layers:
	-	`sha256:e655fc2ba221f054a93dfc8a23100f8946dafb4f778ad1b22bc9c6842a2de762`  
		Last Modified: Thu, 27 Aug 2026 19:11:09 GMT  
		Size: 5.4 MB (5355770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c954ca537bf55d504a85b54a64946171f08d9cd0a755485cf00ab1abfa32c0e`  
		Last Modified: Thu, 27 Aug 2026 19:11:09 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3932060dedc65653a711b8b779f469bd99b5f4f8b11a989ac7b785ff17cacc29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124670402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f8a7efda413cc50ae5177cc48c2d9ef3257bd05fe90e83cb220aef8c283560`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:28:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:28:04 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:10:41 GMT
ARG version=1.8.0_504.b01-1
# Thu, 27 Aug 2026 19:10:41 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 27 Aug 2026 19:10:41 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:10:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:2b41bf6c0b7311e7e581c43ef89dcfd7673d76db2f93fc00703cb6394c88ccf2`  
		Last Modified: Thu, 27 Aug 2026 18:15:57 GMT  
		Size: 64.8 MB (64790556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3803b9b5d9042a3589bedd0e72dc4e78ccd4210a0a4a4787467afe16c42665fc`  
		Last Modified: Thu, 27 Aug 2026 19:10:56 GMT  
		Size: 59.9 MB (59879846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2b1ce3b20025997aa98ff97d0faa8e090bd163e2f6b9c986eb3c00b49303fe2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d472c1a71068aea6c85bbd5a52796e7343e0bccca34f9fc97349b13a0b171bb`

```dockerfile
```

-	Layers:
	-	`sha256:9a78059edfddde6b50e87c9ccceca58a430636888cca742b7baf0246898cfa38`  
		Last Modified: Thu, 27 Aug 2026 19:10:55 GMT  
		Size: 5.4 MB (5355332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d47348751a27200912a607acfed8b9599adfb4431ad92b93fa30523eb690f36d`  
		Last Modified: Thu, 27 Aug 2026 19:10:54 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
