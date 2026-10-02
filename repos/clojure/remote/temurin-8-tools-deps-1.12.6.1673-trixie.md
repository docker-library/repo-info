## `clojure:temurin-8-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:f99ec33a97857c09d7f5cc15a4949aeaa9cfc8750d8f5775a54d42ac5611336f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4bed052973900e583e53280659181827c193b09260a27f4a8e5ed171e62d093c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190124265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af16359e72286c91b60c0268f53c6f77feae7df506bc360b0b5422a323948c50`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:43:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:43:06 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:43:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:43:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:43:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed87f177dbd9e29560ae28208da3590b9f855d5a19dd706014bd217444f436f0`  
		Last Modified: Fri, 02 Oct 2026 02:43:44 GMT  
		Size: 55.2 MB (55192298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f717d847f978da368e8bc0666f25f05978e8bbb2698de6db6278ac6add3092`  
		Last Modified: Fri, 02 Oct 2026 02:43:45 GMT  
		Size: 85.6 MB (85551622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab6937886f33205aa543cdf863869c83518304e4316f275f6cda11483139e53`  
		Last Modified: Fri, 02 Oct 2026 02:43:42 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ea99c3656138e2e36d282bc9b290f6ebabaa8378fd2e03c62931b7a9442d7c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7b7c213c68e1f1a980490176db97bd51d890f77295030a3f006c3bdde1c28e`

```dockerfile
```

-	Layers:
	-	`sha256:5e8b94d2597f95ad66a1e958e4c32a7a0f08f20082413d51a98c82105ba2ace6`  
		Last Modified: Fri, 02 Oct 2026 02:43:42 GMT  
		Size: 7.6 MB (7599174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a2b8e9ab06fd892b0a5988128ff30afa1e083cea8536d5033023e0ec8ed8cc9`  
		Last Modified: Fri, 02 Oct 2026 02:43:42 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:022a775561e7f2553965088a7202337ae30af8a33c1cc3c1fe0a67c7ee232c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189737934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5dd0d320eaa0655998b62823ff429899e47bf238177d1491fb14e0122fa55dc`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:42:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:42:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:42:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:42:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:42:46 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:43:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:43:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:43:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aaa0246b1dd1cd682bf1e60996c5a613aa68dcc425fff1eec5bfc76042a0bde`  
		Last Modified: Fri, 02 Oct 2026 02:43:26 GMT  
		Size: 54.3 MB (54254300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f01abde5dc47c3a10e5165a01674dce7a3de5bbb57de5371936da5141bb3a6`  
		Last Modified: Fri, 02 Oct 2026 02:43:27 GMT  
		Size: 85.7 MB (85734153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:810cc56f4899327b2b0e81d3306c5aa51b7f1c8a105b1a94f9f254cf3a7ea183`  
		Last Modified: Fri, 02 Oct 2026 02:43:23 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7890512bd87865a8a6d5c5fc322d82d916b2a1ef059bbe64eb8ef905eea5fd0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7620709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f3757a529fdeb65f7ae4da8db717ad061908a9c8dc749795f8b76e699b38fa`

```dockerfile
```

-	Layers:
	-	`sha256:998f2a6d8bafb2ef2b1b8360c2769eb343948fdb8699b5deb24b7f5992435004`  
		Last Modified: Fri, 02 Oct 2026 02:43:24 GMT  
		Size: 7.6 MB (7606267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:665eeee347793f74d1dcd1b1136eab9a71ff534b539e2a7ab40ad65cb874e96c`  
		Last Modified: Fri, 02 Oct 2026 02:43:24 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:957f101091d36d1b6ee5ef91d588d4c6af9ae9adedca68e478fce6de9a3137fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193853511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71451d37fc0f494a0b3cd2951d2d39ad758dc82eb4234d677a06eb3a10dac9a`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 03:49:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:49:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:49:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:49:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:49:47 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:50:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 03:50:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 03:50:34 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca7108a41dc4d3c9b1e471f127018c9ff286c75325c6fbf442baf44a5b544e3`  
		Last Modified: Sat, 26 Sep 2026 03:51:19 GMT  
		Size: 52.7 MB (52667132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51e3b35b5c3832e006d0e479e7b8a89ee2c4be3b207285917e2c1dfc05bf597`  
		Last Modified: Sat, 26 Sep 2026 03:51:20 GMT  
		Size: 88.0 MB (87990657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b96189389630d5c728760e978d637b34d8c3a48175e4ef3132468c9d9b81ea`  
		Last Modified: Sat, 26 Sep 2026 03:51:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:706231c96bea940124ebeb8d99222a3be0265950b3ab0a8133dbfdcb42f3f63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945521e7fb35d9b75db111633fd99e291a4acc7dde7cd125d8ed1cff60a5b353`

```dockerfile
```

-	Layers:
	-	`sha256:b34303a0b20fcec2c14c523b0dd574bb684e164533561bf81e345b7b96e51c2c`  
		Last Modified: Fri, 02 Oct 2026 07:36:42 GMT  
		Size: 7.6 MB (7604188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1699a9e79659e906ec7bdac6b8fde78a05d1389368a727608ce623335601cd5`  
		Last Modified: Fri, 02 Oct 2026 07:36:42 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
