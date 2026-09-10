## `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:61291dc20c3ae57ab7262b9a77141327f502abc8cb787063832224d19d624766
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0bd5a58ef663756ee5fca17abd7fc413e79fff17d4e303dce506ba5149f6bbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150082072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8efec3b71ca7e02cc7a3011af165adac9f2fa6030961a394c21662d94172fa`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:43:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:43:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:43:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:43:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:43:56 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:44:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:44:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:44:11 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88afb7c7e8b6c9bf43c402e64d5a2bba9c36b7dbd64b175df30f37eb0dcaaf59`  
		Last Modified: Wed, 09 Sep 2026 03:44:27 GMT  
		Size: 55.2 MB (55164394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5683d180f367f679e6333a116adc6963cfbb6e56a5a75d22f86914cdd9000c17`  
		Last Modified: Wed, 09 Sep 2026 03:44:28 GMT  
		Size: 66.7 MB (66684376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e13b6e645259a429646bdf1716e3542ecbb48af3e43170768399d4e27b89bf`  
		Last Modified: Wed, 09 Sep 2026 03:44:25 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:11884055fab3c8db2df9dc5c42e3c6f96997ce21bdcf44625699eb0398b216d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0b07285e60272097f1d7196f682e69c584283ac9b905f472a52f65bd1be257`

```dockerfile
```

-	Layers:
	-	`sha256:865f78103ea939b03fc296904480cd077a8be363757a4c8a947eade87df2393c`  
		Last Modified: Wed, 09 Sep 2026 03:44:25 GMT  
		Size: 5.2 MB (5239626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9d1e7f8ea8a11230cb49c60335862b24fe6df140ce6d492c0e468219f8dd7b4`  
		Last Modified: Wed, 09 Sep 2026 03:44:25 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9206b11f8b5baba044fc916bdb2c87f6029fd38a90270322791c87b7db29283f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149064324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d76a63dfd0268913e83489e024bc38220f09adee520faf1a3a9bfa10f5e538`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:55:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:55:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:55:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:55:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:55:02 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:55:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:55:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:55:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8633f43407b3a16493f773477e6ba7e8e4bca303feda13b516f256becef8b2e0`  
		Last Modified: Wed, 09 Sep 2026 03:55:33 GMT  
		Size: 54.3 MB (54262747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ed7ac101e239eedb1b782b0d1a42a1cad46feefe238bbf913c9c407235f55b`  
		Last Modified: Wed, 09 Sep 2026 03:55:34 GMT  
		Size: 66.7 MB (66683642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca218c6a05155485c422b0dd310feb735acaa0823424d1ff14cab93108b1c4c`  
		Last Modified: Wed, 09 Sep 2026 03:55:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f5c3a4559d013f40031fd8fb7c370ab49e08a0395fd8647af9b22f59b251c9c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b6e90c57a5fd4f28209adba40006cbb5c795cb4e86ebedc9f2c73324772462`

```dockerfile
```

-	Layers:
	-	`sha256:046662842cb98160c70d217cbc07cdaf0009a32086eed48a565e4ae7b0a47f6d`  
		Last Modified: Wed, 09 Sep 2026 03:55:31 GMT  
		Size: 5.2 MB (5246087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:770ccb29e391ccde0aa2cdcc6dc7b55a266ecd2492c28b0db230c15616d67144`  
		Last Modified: Wed, 09 Sep 2026 03:55:31 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e278571be5fa8942cbbe14e4e666c213f3d9df6db0d0bc697ed1b242b27054c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157246429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:522cf41e45740ae9c4751c87e3da502ddeeb5e84c5ba7ca4d757a156e785d28e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:01:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:01:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:01:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:01:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:16 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae276a4f9319465480c60731d2db38a6791b5c65d840ae9a8d2bf9216c2eacc`  
		Last Modified: Fri, 04 Sep 2026 00:03:00 GMT  
		Size: 52.7 MB (52670660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a2124bdf624e10e9a717203b137674964914ed843ea9b2f4897e8ceb0e5c98`  
		Last Modified: Fri, 04 Sep 2026 00:03:01 GMT  
		Size: 72.5 MB (72498647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d921fb9cb36192ed0886e5f63ababced757d15a17881942dbf47db52c0127adf`  
		Last Modified: Fri, 04 Sep 2026 00:02:58 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c7cd5633255078b89b0395ab2b314ad7c625e152863914497721c6f34db69cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a0dbf707517d549a55a19921a24955ed59019f97ef1867a72d8febc11e13cc`

```dockerfile
```

-	Layers:
	-	`sha256:4823ca8dd3a08290be45edba7e1e706e967bcfa73fda72d2422b02ee7f1e8962`  
		Last Modified: Wed, 09 Sep 2026 10:29:21 GMT  
		Size: 5.2 MB (5245351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c18ebe07631c69eefafbca330aa9dbc6d14f6056e5791ca38e2b9ee712fbb402`  
		Last Modified: Wed, 09 Sep 2026 10:29:21 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
