## `clojure:temurin-8-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:740c85d4648d4036ae4cfd0ccbcce77071eedcaaba40cbff130065519d580ce2
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
$ docker pull clojure@sha256:586aa2e19ae70d71d1dfa68813a79c0c66175c16d4389dcfdda72ab3ece9590f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190573231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7408ba635ff437bc78ea6ce1c10fa1ca19068d405449f54ed9c347b9e23a798f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:44:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:44:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:44:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:44:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:44:12 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:44:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:44:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:44:28 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6212af1be88e07bf347bc93bebbeee5d9d74a2d2ae9c8ff2688686151c04fd9`  
		Last Modified: Wed, 09 Sep 2026 03:44:47 GMT  
		Size: 55.2 MB (55164389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf6289be24b58c6ce1ae1089745e20995ca9b16bde08f609ad3eb05a1f83945`  
		Last Modified: Wed, 09 Sep 2026 03:44:47 GMT  
		Size: 86.1 MB (86070372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d468d8b51d28b3ee10ff3d43eb646085a350bc05c173f01bb75c4619cc1099`  
		Last Modified: Wed, 09 Sep 2026 03:44:44 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a4f2ac5394b50d251a9b037e2945a48aba559e2db77123ab5869a8204403e150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07a7b74f63da7f0642b3342bb68f5c10fad17856f7edb763f8ef92ff5453165`

```dockerfile
```

-	Layers:
	-	`sha256:09fc8ff16841dc24cb5e81024ad9d5789812a10153f5ab05d6ea300562ea0544`  
		Last Modified: Wed, 09 Sep 2026 03:44:45 GMT  
		Size: 7.6 MB (7594231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69ad2983b84146b4d3a01244427ae819cfa251a5cc87b177ec518a1cf84c4641`  
		Last Modified: Wed, 09 Sep 2026 03:44:44 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b79a4d33ff3ee357fd6aed2bba85cc2f137c6b73698ad46fade2ca8609ac03e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.2 MB (190235794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec8524640b87202f6122cb5efae196d781585736e1fcc8282fbe3c289a19e2f3`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:55:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:55:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:55:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:55:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:55:19 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:55:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:55:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:55:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed5cb340266fb94e07516626eb782b2617984c7a1b445390c8826050d864a15`  
		Last Modified: Wed, 09 Sep 2026 03:56:00 GMT  
		Size: 54.3 MB (54262743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018355f41204e768341f30055b4f690948d2c1e0cd6b3cd3008d2272b05ccbc0`  
		Last Modified: Wed, 09 Sep 2026 03:56:08 GMT  
		Size: 86.3 MB (86267552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3afc8af295a7b961e60da26c376ecd2b51d19a007ac442c67509f42ac41837`  
		Last Modified: Wed, 09 Sep 2026 03:55:54 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:551cbf90dac1a84a2df6c201b1bfc02140feae022537d841a635136f7144aabb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7615766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e4a779d6ebbbda864a88b50b6688f40a69a8fb122de2cb37bf4165ea39dfb3b`

```dockerfile
```

-	Layers:
	-	`sha256:dae4f0b325b6b8561a22f7eac665a03dae752be1466830cbb41d5cd050e1185f`  
		Last Modified: Wed, 09 Sep 2026 03:55:55 GMT  
		Size: 7.6 MB (7601324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5cb30737a110f2e1155e7cc180be5f5e1ebe59e95604c2eeeab440286e3fd19`  
		Last Modified: Wed, 09 Sep 2026 03:55:54 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:bca82e1ab2b44b456382f184df2883a7e479f76952fa234d9c5f0bff7da52fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197552300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03582f31e000d2056e2f7da8730a83228490c524309b8c703577a8ef9464011f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:05:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:05:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:58 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:07:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6d6dd11415fde80284cfdff67a20a05744a67bb1d841cb6e0604cda6f3c8cb`  
		Last Modified: Fri, 04 Sep 2026 00:07:51 GMT  
		Size: 52.7 MB (52670660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1c9aa47577f9e4a7942396f28c1c3b41470ea3d0ce382e1a86a0a5bfcdaf2e`  
		Last Modified: Fri, 04 Sep 2026 00:07:51 GMT  
		Size: 91.7 MB (91716710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41621a4b7f1ac22a7d0d247df15b0c1ff040238933cf24ce5129c4946d6345ad`  
		Last Modified: Fri, 04 Sep 2026 00:07:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0342ef84ef503089ea67c92a434993e29c954bab678ba97c93769a5541c66664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d87c9a1bc8eb3cec35def422a06d21f2d58f18d30d9900ffe919447ddc060f9`

```dockerfile
```

-	Layers:
	-	`sha256:7b8debb7a428c022dcb4427c99a236304663aeb46b445d38b36a858516917a25`  
		Last Modified: Wed, 09 Sep 2026 10:30:04 GMT  
		Size: 7.6 MB (7599247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b772a904687c3781dbb6e0ecab1d21c0600be6c3d3d5513608cf161ed014ca43`  
		Last Modified: Wed, 09 Sep 2026 10:30:04 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
