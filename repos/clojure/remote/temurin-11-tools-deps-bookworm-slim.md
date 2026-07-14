## `clojure:temurin-11-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:bbdb3ee1e29e9a4a2715482dc98f79b8594ff864215e5dedc41e71c2f65beae7
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
$ docker pull clojure@sha256:e7c839e45a5aa964162d2a81d3174e5a1e698abf0a106c62f84e6d71797ae7c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240767748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a777d876510859d8774f696ea723604be182646a4c7c45bc246b85c54d4be9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:17:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:17:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:17:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:17:51 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:17:51 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:18:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:18:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:18:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef191cd5f567e55bc776b1106bc0d01f8d8d708398fbb98a3319e607475aaf76`  
		Last Modified: Tue, 14 Jul 2026 02:18:27 GMT  
		Size: 145.9 MB (145886183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104b70c8f4f26f295d43bdd0e05a9c2be5b4fc73c21f008e42a3c05ffed652a2`  
		Last Modified: Tue, 14 Jul 2026 02:18:25 GMT  
		Size: 66.6 MB (66648276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd97c940226e7e359c87ca00f8ce1d645966ce75d296b5dd3276c347b6a50da`  
		Last Modified: Tue, 14 Jul 2026 02:18:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:18f01a7837bdf66e6ee8d192b4431d74c3beb8b95412c65b2cb3c2d004b2edd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5147972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5d7dc3aae33480474574c7611e0ebba3a31492cefbd62f9f81261578a92cd8`

```dockerfile
```

-	Layers:
	-	`sha256:03341f45b02bb9b3280229a7f6cbf650bcd0a9348ec9b3686bafbd42fb55070c`  
		Last Modified: Tue, 14 Jul 2026 02:18:22 GMT  
		Size: 5.1 MB (5133551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb7fac65da9daf0717235c32515fe13ecfd58a3f77fc6defbd68b9089ae48a72`  
		Last Modified: Tue, 14 Jul 2026 02:18:21 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dd06e0bd639ae2dd05ede84fed1e36853bbadc9a1f6933b1c8e6bd08565617c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237338187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7058823bc60fe442bb18a4f0e4a9dd7826298c6a49f842c07c9161e1aeb6add9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:24:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:24:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:24:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:24:38 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:24:38 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:24:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:24:52 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbd1aec1cf56b5be4e7943ab54b0d9aa6c71a95bb577a98d9fb4916d3501ae5`  
		Last Modified: Tue, 14 Jul 2026 02:25:14 GMT  
		Size: 142.6 MB (142582199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984200d426631b4b75901aecbd6e049ac00eb6ef5c247032cb6a8f3cc5b3f4a0`  
		Last Modified: Tue, 14 Jul 2026 02:25:13 GMT  
		Size: 66.6 MB (66638089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d649255d22effd78811f399d90eb4d0c7a7597ef133df580253b55e6c9700dcf`  
		Last Modified: Tue, 14 Jul 2026 02:25:10 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b3aff19e2316916604b1200c22282e23b5d4f655945c7b1475c915c97308bdda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5154469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b270ed31da4d4d4d75ce90891fa30a441403a714f0e23ff3c8df6cc3703170a9`

```dockerfile
```

-	Layers:
	-	`sha256:50c4ece348046e745530c5966f22a97d0cea8d8d5f0d0593ac3e6479fd018844`  
		Last Modified: Tue, 14 Jul 2026 02:25:10 GMT  
		Size: 5.1 MB (5139930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fad218bfd7d219b4543fe6163020268ac1004d0b523732c773f68ededb3ce9d4`  
		Last Modified: Tue, 14 Jul 2026 02:25:09 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f2289f2085b0bc4b7da21a570b624adf8740561429080c8e57d688353d3065d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237664957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9b826f65872209c9284d026713812e068521bb1d3403610d5660e2427badf8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:12:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:12:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:12:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:12:04 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:12:05 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:19:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:19:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:19:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba944fac20ef8449ec303e3e748ff729291783978d409a4b83616a2f578f2fa1`  
		Last Modified: Tue, 14 Jul 2026 08:15:13 GMT  
		Size: 133.1 MB (133110218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1518d793ef9786e295efd878f7c9584802d3dbd21907b1b177b71712524216a6`  
		Last Modified: Tue, 14 Jul 2026 08:20:17 GMT  
		Size: 72.5 MB (72477681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a388f5c240c60d2d57a07cd41ac212b7481472d9307aa338d70ed4be3dbdad5`  
		Last Modified: Tue, 14 Jul 2026 08:20:15 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3944e800348ebfd1bf5bee6c64fd8bea8a3ec44560b873cd7e230885291cf991
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0022c67295af8711c86d6fe44d8c718c724fc207e500a98a1c2c0a0d758878a`

```dockerfile
```

-	Layers:
	-	`sha256:3cf149ada57cb830b119fd91b60c3693d934cc3cc00dc1ebc31ee779975b4bdb`  
		Last Modified: Tue, 14 Jul 2026 08:20:15 GMT  
		Size: 5.1 MB (5138094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b43cb1245d984645708802939e11ee45c5a9787bab4e68b68cd9dcbbf33ef94a`  
		Last Modified: Tue, 14 Jul 2026 08:20:15 GMT  
		Size: 14.5 KB (14468 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:7ae6fb73c47ecfcd70ee80b93979c8828296a348da751adbbf1821a963fb08c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218989109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80c4c5c6283d6c01b106e620edb8b4bc4b237e42e659a972a80545b1c63d9e9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:26:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:26:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:26:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:26:47 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:26:47 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:27:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:27:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:27:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d189ecd238389776b111c15f3320572c714ccc09996256db4fe5755c65eb38`  
		Last Modified: Tue, 14 Jul 2026 04:27:27 GMT  
		Size: 126.7 MB (126651524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ddbdd3cb12b5d1fe24e6a56e8aaf1af876e1ff675d087f9569af09396ff8b5`  
		Last Modified: Tue, 14 Jul 2026 04:27:26 GMT  
		Size: 65.4 MB (65448673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67efa90d109e211ee94072bc9f27e97a0b0159cdcb3ad32ff5d362be7ac9ca0`  
		Last Modified: Tue, 14 Jul 2026 04:27:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e2752e3b514385e9f248d7b6fc2aa82809c181f0f87b4dbb013469a32586b805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30aebc3b53dc32f9954a094708d7e031cddedd5ad620eab11c4b673add9af2b6`

```dockerfile
```

-	Layers:
	-	`sha256:0839ee2aa7cc7a988bcb532a0352bdef2f23b23d558edfd754af0a81ef8919e7`  
		Last Modified: Tue, 14 Jul 2026 04:27:24 GMT  
		Size: 5.1 MB (5124876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:daabf622c6f0ee20898c05d3777acea76799ebda9211bc11f8ebc6be3583d4a8`  
		Last Modified: Tue, 14 Jul 2026 04:27:24 GMT  
		Size: 14.4 KB (14420 bytes)  
		MIME: application/vnd.in-toto+json
