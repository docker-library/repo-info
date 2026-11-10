## `clojure:temurin-8-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:af2667c1bb22e1b109e5f26b708eb3575d996f047837566ee0280ba5ec7f44d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:31cc39d581786c32eff225ea0b818d4de4a5e5f06e2408aaaadfaa77c64280f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181733169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47ca054a33a32c13ac3c3b527ba3ca13e8d10e810ae1615a1d1e679043d2ab58`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:34:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:34:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:34:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:34:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:34:07 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:34:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:34:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:34:23 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9dc0d63923b1f72b4bf1481a9bd84c78ef8af2a56be7688e78b78cb297bc6`  
		Last Modified: Tue, 10 Nov 2026 00:34:40 GMT  
		Size: 55.2 MB (55207905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa87b4b7d029636e00ebd2e68a571ff9b056f0eeab3014a63042a854f937122`  
		Last Modified: Tue, 10 Nov 2026 00:34:41 GMT  
		Size: 78.0 MB (77998135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b798698045671b8212dfaf46a9b49fe3f3ce3052181fad8d4b5dee7d377d613d`  
		Last Modified: Tue, 10 Nov 2026 00:34:38 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6566aa340dff08fb067431cab6988c80a2ef64dd1d4ccc80edfd1dedd5f15af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19df716995b94615b5af6eaf5a15abc25fd00162fc2922ef10d31fc0ee41289`

```dockerfile
```

-	Layers:
	-	`sha256:02d2153c7474dcb17536fcd367feea7f2587b7edfb3eab9ab476ba30e70b4cbd`  
		Last Modified: Tue, 10 Nov 2026 00:34:38 GMT  
		Size: 7.5 MB (7498995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04b072a34b2271a777c62fc6f4bacb632bc0c471a5dbe70749a3bf9b08e15ab2`  
		Last Modified: Tue, 10 Nov 2026 00:34:38 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dd7841fcdb81d72645c8fd22db39ac1ace916930978facf082fb499c9613d547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180682002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b25640aaf638cad015c197f2c5cb988e55abfcda6a91e5ab45df4c215a77eae`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:33:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:33:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:33:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:33:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:33:25 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:33:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:33:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:33:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b2c6e7d3b58cecc64b8f8dac0c94e3a80bf95765f814584f1297a19ca18e8a`  
		Last Modified: Tue, 10 Nov 2026 00:34:01 GMT  
		Size: 54.3 MB (54270328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688860936d0f22358a6f87659db6988cdc81078a6d09ccdeee8d6e1e548facff`  
		Last Modified: Tue, 10 Nov 2026 00:34:02 GMT  
		Size: 78.0 MB (77998574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3e5fce547d9567c955dfab78b77d0b012401a0fd2986872a0ad520307a1782`  
		Last Modified: Tue, 10 Nov 2026 00:33:59 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3a61cf79ec6360aa5d2af4736beca03658ff65496ecf44b4d6a84a6bdfd2ff77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7e0ddac47fc5fb0b41e4580f175ff9a2b9ef6669d815599a2fa2d9de02117c`

```dockerfile
```

-	Layers:
	-	`sha256:0607f7e14283adeb8edc51c59fabc4aba527bbfc9f2aaaffa4db1902eddf7a87`  
		Last Modified: Tue, 10 Nov 2026 00:33:59 GMT  
		Size: 7.5 MB (7505458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a6db4d64bf5473ea5b1d9260332c5bf7f1d03dfbbc186980fae0cd0109f9ef8`  
		Last Modified: Tue, 10 Nov 2026 00:33:59 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:97b4bedfae2adaabbc1fbdbb9c7515bd533211bcb942b7db60de2f847a34363f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188882238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1247735c1fd291a3cf669a4a2f77a9efe0377da52e31cd7003ec2792fb122c0e`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:10:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:10:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:10:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:10:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:10:46 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:11:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:11:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:11:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc5a678b4dcfb705b8cc93f132659b0b5b27172e990eaa04b1c6614d174d883`  
		Last Modified: Tue, 10 Nov 2026 00:12:16 GMT  
		Size: 52.7 MB (52689156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0046e3f30ca2cecaf710333bd1cee7df0a432137959f7b81cc48dfeaa33a3b3`  
		Last Modified: Tue, 10 Nov 2026 00:12:17 GMT  
		Size: 83.8 MB (83823816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee782866f8fa9746a6bfd4a928f0ba198a479d4e83d1b8f61282febf409bd775`  
		Last Modified: Tue, 10 Nov 2026 00:12:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:992ca5c1c0f5e29350e34febddb6b02981f51603130d4fb6cbf6a0fe90f94b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a860391fbad49c788b52361b8557002446b76db728668cc753cd127eaa61e5ab`

```dockerfile
```

-	Layers:
	-	`sha256:f3a331a81368a615205692607f74186df711399a398fb9e797bf051637256614`  
		Last Modified: Tue, 10 Nov 2026 01:49:41 GMT  
		Size: 7.5 MB (7504802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:143f81e9e9ada69ad9b87648e3278a6ab56152d2c559cf88a8729905efa3140d`  
		Last Modified: Tue, 10 Nov 2026 01:49:41 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
