## `clojure:temurin-11-tools-deps-1.12.5.1654-bullseye-slim`

```console
$ docker pull clojure@sha256:2534aa8140d8b422eb95c0bdd7beee03d0d329e09522950e4a5a00b659e7e3f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.5.1654-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:35f1903f95b92e6bf1014dac1a5d00c15a0be2df0f5cc25aeb62b07b1b8e870a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232246854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659297282d73f2297780a50455706bf56b7937ccfa9c0660e52ebc0846a87fc3`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:16:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:16:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:16:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:16:36 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:31:17 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:31 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ea516c9b8246694f33622870db902fece851f7ef57577b132fffab3294d350`  
		Last Modified: Thu, 16 Jul 2026 01:17:18 GMT  
		Size: 145.9 MB (145886182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e444ddad7f982d2fdfc030972140b71213811e63ae62774617229d16bd68887f`  
		Last Modified: Thu, 16 Jul 2026 01:31:45 GMT  
		Size: 56.1 MB (56100272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c207bf956de04c6582e3690d6f0930bcd553689456274c25ededaa6ec3a20b19`  
		Last Modified: Thu, 16 Jul 2026 01:31:44 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c7ec5c7627311900f6cba77311afc08a6a52ca3fc5e15cd5dade5aee16176529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3576953bda96a494804e08d228586bcafb20ce1f922e2a5e4646b6e8b97af6d2`

```dockerfile
```

-	Layers:
	-	`sha256:31700748ae28142535475836a1661d8ee2abe197d43c685b73001108b1e7f622`  
		Last Modified: Thu, 16 Jul 2026 01:31:44 GMT  
		Size: 5.3 MB (5337365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:563bb2e9b17d606f87a3dff2f3bf815c6efc4623208c356034ad60485679a279`  
		Last Modified: Thu, 16 Jul 2026 01:31:44 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bb3378e98fcf4948f1e3e9f23f5414eb1f03d6d7009d75e499996f0990beadcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227599277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ba16f357cf910291e80c8c24dc5ef5d5c0e3ce2932e56ce99b2fc3ba902daf`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:20:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:20:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:20:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:20:55 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:20:55 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:23:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:23:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:23:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb78378a96f9776f1368588bf7e5ccf81465e8d189c9b8c6f2f14b18fda9cd8f`  
		Last Modified: Thu, 16 Jul 2026 01:22:27 GMT  
		Size: 142.6 MB (142582169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e076c0ec8c731f9f342d7dc6d887621cb3c8cf9df2e41821876809905ada059`  
		Last Modified: Thu, 16 Jul 2026 01:23:43 GMT  
		Size: 56.3 MB (56267479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aefc59a4647314ceb4eb0842e5a15ecf96ae1bcd01abbf11fbfcdc117963353`  
		Last Modified: Thu, 16 Jul 2026 01:23:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ab63d26bbafa884b8fc3eb6e76bc9c67b2cfc976a8b5d7fba403cd8c74760998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5358254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dda74002e8f07e039befbfa653b2602a6bbae99fa4fb9aaaae012263bb5c99d`

```dockerfile
```

-	Layers:
	-	`sha256:52ece34e3fb0e1db680f0b677024ced0cc0a3d7d49bb61b256bee95f1ba76348`  
		Last Modified: Thu, 16 Jul 2026 01:23:42 GMT  
		Size: 5.3 MB (5343715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58909fc559142a3d1b18f401159d9911d706d326e37c4d9168cfa7b07abea7e3`  
		Last Modified: Thu, 16 Jul 2026 01:23:42 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json
