## `clojure:temurin-11-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:a82bbbd8b5738da1aea66953d4b081d39213bf276e79c7d8a1c127c1c78dfe4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3e8c76a98d1699ffebaf8ec22316af821302d51ff98777a728c81fbd5416d5a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240776791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f687aaea8f6c8a071bd4b0e80f181435257bf180a31be24350cd8362a43b1c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:55:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:55:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:55:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:55:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:55:35 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:55:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:55:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:55:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38004f3b1295e779c3b9a68b0df8a7555edab2d9bcb375c5042b9f730cdbcb01`  
		Last Modified: Wed, 29 Jul 2026 17:56:11 GMT  
		Size: 145.9 MB (145886151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0102ad15a15b0061c09b262abe8895f630104ed8f2a80dd0fe8691012f8ee7`  
		Last Modified: Wed, 29 Jul 2026 17:56:10 GMT  
		Size: 66.7 MB (66657350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a63aab389c195b29ccaa3dbaefe881579d710a2d7c381b743c1debbc345c031`  
		Last Modified: Wed, 29 Jul 2026 17:56:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4251756057a540c905eb6d296c12645bbb2c63ee47421247658e0ef88cd4442b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5147972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc0050e12ad3c4d0aa7115bdafdf7d89b32abdf7cff732974da6a1ed90f19ae`

```dockerfile
```

-	Layers:
	-	`sha256:3bac1367eb6a53c35b2ee9c5b5a65ad6a2154c0ffd40fd7f9e9d61fdac926f3b`  
		Last Modified: Wed, 29 Jul 2026 17:56:07 GMT  
		Size: 5.1 MB (5133551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed0737c1da2aa8a4ec8e3124d2ae7c6a0edcb3d6302ac1357ae691797795b3a8`  
		Last Modified: Wed, 29 Jul 2026 17:56:07 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5c084152308113b45dde599a73b670288fd7468e397b5a633354b160b2f46341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237348529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6259eb3a2d90bf4eea15c69a665af95d21329de5cef14e1926a0585966c7efa`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:04:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:03 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:04:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:04:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d5bf5cdce4df46b7ce865f4abb3d2837075405cb657cf812f427afd15b190b`  
		Last Modified: Wed, 29 Jul 2026 18:04:40 GMT  
		Size: 142.6 MB (142582143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14abeb81c747ced6c81d8d3b5fc72dd23b13f90abb3a224f385291b257179bde`  
		Last Modified: Wed, 29 Jul 2026 18:04:38 GMT  
		Size: 66.6 MB (66648487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2a443b55d73b5a4e80366309e9d4bc255673a2f3ea2ccaa5b54a9edb415b0d`  
		Last Modified: Wed, 29 Jul 2026 18:04:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:010d6eb434c16e826d9314d7bda74a233ece11d3f73d586413fc03d4f089403f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5154469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32214c66f1b1434f558bd08fe9479cca8f447abcd4e99720373d5957e826d1b7`

```dockerfile
```

-	Layers:
	-	`sha256:5b0c7e6aa215b8ef1bac544d9e5839f17eeffe7726f84fa9c9237208097aeb5f`  
		Last Modified: Wed, 29 Jul 2026 18:04:36 GMT  
		Size: 5.1 MB (5139930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ff452e2ddd71644955ebaa6e611c1a32151785d0e0641039aa260d6ee83182c`  
		Last Modified: Wed, 29 Jul 2026 18:04:36 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a9e6633fd6bdc2ced411209979b4ce9d8a520e7dd4810cbbf221c1e9e711b6d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237673761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ed7874ed4590e832385b1c96824a6bdaa6d83f15ccf32c23471c748fc989b9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:57:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:57:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:57:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:57:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:01 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:57:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e272b4d2276389cf3c9f49f3b235daf03d63bb516a3025f3aecff0b48e4938e9`  
		Last Modified: Wed, 29 Jul 2026 17:58:08 GMT  
		Size: 133.1 MB (133109881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f8082dcae79ee66306c77957c0d42b06f142a5a798b0d28ed9c41120f8167c2`  
		Last Modified: Wed, 29 Jul 2026 17:58:06 GMT  
		Size: 72.5 MB (72486819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fd6bbb1a4b619a3d7b07117ec1af2e53366e9edfe88a7769adf13e6ff35402`  
		Last Modified: Wed, 29 Jul 2026 17:58:02 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b7367b8145396cff4639dae9bd2f95f9ee1b1a8ddff3a557691e6aacd06801a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11343b6f9dd54fe18fe07c47d01a94f96129a49e4fbb68bb81adf55410008046`

```dockerfile
```

-	Layers:
	-	`sha256:aa96c99c5a1a49d684826d60a339c8adf5badcb8d36e6715af25b35f020ae8d3`  
		Last Modified: Wed, 29 Jul 2026 17:58:03 GMT  
		Size: 5.1 MB (5138094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1132ffe123cb41f4e4e5fa6c43f3a889b564c619eb1c33be0424293886508d23`  
		Last Modified: Wed, 29 Jul 2026 17:58:02 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:21f92054db91b602a34de734a7d014712d427a3c675b9f7aa03eca82f6ee25ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218996837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1b97b9e555bb0b7f59977741fbbf69c754040b5dc7dbb7bea8329cffbb7692`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:16:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:16:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:16:48 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:17:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:17:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:17:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3645ecf80f1d4d51ccd31328fdb3819171c3c7943f194d37c588e920b657d263`  
		Last Modified: Wed, 29 Jul 2026 18:17:44 GMT  
		Size: 126.7 MB (126651680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22971a59d97ffc1cb73a0eb911dee76df4a96e6ddae5b520acf564c47c7629e`  
		Last Modified: Wed, 29 Jul 2026 18:17:43 GMT  
		Size: 65.5 MB (65456244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73507efad9c9f68a7cc34959bdb1d2e88456cff3ad36a5151fb222173765de9a`  
		Last Modified: Wed, 29 Jul 2026 18:17:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f16fe2938dac1326e1dfe4abd62b09d79dd5649be69e09e3f74d636dfcd430a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d46437a0411da01bb1d45ddb06528e15521d44a4c344e2009a9ea700229124`

```dockerfile
```

-	Layers:
	-	`sha256:975eccc54b9247b4b7a1c3d81ae1bd2ef62afca9bc7dd8e002f16962b8da14ff`  
		Last Modified: Wed, 29 Jul 2026 18:17:41 GMT  
		Size: 5.1 MB (5124876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8973a7e5a7ba0ad30b50b07cf5eeab64a63f7d02db6fbba4f7470e6472543979`  
		Last Modified: Wed, 29 Jul 2026 18:17:41 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json
