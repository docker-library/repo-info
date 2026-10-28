## `clojure:temurin-8-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:0ac13cf613613c24fbf1e9e3a906ac4509bfc249bbd7398e508e0cf30b5bb94e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:acbc5e968672c7c5d57e2789bf4cd103738e2cce01ab8c88f5ee53b14aeaa3b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149948334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9dad368b7a1fc93ed953e19cc9337acf3d5f697bc6d6ca12619d0903069219`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:09:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:09:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:09:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:09:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:09:24 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:09:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:09:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:09:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8772e0d6607f832a32ea1714d4fc188784f69bea88d7e0412902e4189885af5f`  
		Last Modified: Wed, 28 Oct 2026 02:09:52 GMT  
		Size: 55.2 MB (55192251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1a96ea04ee6ef3823c744c7d9d9aa968efcbe196dae394df2bb7a4d8985f88`  
		Last Modified: Wed, 28 Oct 2026 02:09:52 GMT  
		Size: 66.5 MB (66508000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd9a5a666daa23b9e36348261d791502099d3d74240b202007aaf8128bef606`  
		Last Modified: Wed, 28 Oct 2026 02:09:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f49d84a483697f6fdb51e1f1107e9c2b4ba0d964fbca0ec69f8723572d4cddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa2b991ef183e03154da600aca9afbf3df92fafaa1f6313d1c0ba0004744fe56`

```dockerfile
```

-	Layers:
	-	`sha256:4c4a90750e2e45ebddeb9df4cb1c1969ba1c74db200567098404d597513eccb1`  
		Last Modified: Wed, 28 Oct 2026 02:09:50 GMT  
		Size: 5.2 MB (5238395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0635ef875dac609c18f277fa3324a39d8c1f19eaff6519f401f438d9f18c3dcb`  
		Last Modified: Wed, 28 Oct 2026 02:09:49 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3ffa2d259911c1ec7b010b9b9eab630d7b06b53bd750c80058db1215a782ca07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148893848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e1fb16d026cef96bee430f6830af4ef1ae86ac4efdc17cb07ea9d06d3e34ab`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:16:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:16:12 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:16:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:16:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3a36ea45778c8b76efba0735099061f01f9583c397f75ecb22e99dd7c4fbc3`  
		Last Modified: Wed, 28 Oct 2026 02:16:44 GMT  
		Size: 54.3 MB (54254291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78deec21319ecef87bf94c9945a0237cd7082c2343a4a9a696426e7a4044ef2`  
		Last Modified: Wed, 28 Oct 2026 02:16:44 GMT  
		Size: 66.5 MB (66500959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce78d6426e17eb5c72fc936eb30f82f97bde5f5fa3ff288fdaba392f23b5de8c`  
		Last Modified: Wed, 28 Oct 2026 02:16:42 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:391450ffb47a9c8bb46272f3ce950dc26ba220c9a550359e3b5800773d9c3455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e029fb4467aac855321acc063369cde03b2d1ec06b5d61bb431752bfc856f017`

```dockerfile
```

-	Layers:
	-	`sha256:2d678c32a6002ff510ff13b873e04e579a033ecbb571b83075185bf67be17fc1`  
		Last Modified: Wed, 28 Oct 2026 02:16:42 GMT  
		Size: 5.2 MB (5244856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d83d4fda2554f6ec83a3592efb5b08f379638876a97be106754ad26d5328e3`  
		Last Modified: Wed, 28 Oct 2026 02:16:42 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4e29eb48d5987c6785ce3371967bfe3f96996795a5e94fb7d2e8f8e18dd41fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157094122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d697177472c08d1f0e37f3dc956fe1475994f5e78ad67e274daa3579d35727b7`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:29:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:29:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:29:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:29:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:29:26 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:30:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 09:30:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 09:30:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e90d937d3971c598899f7f2ba1aaa7a78750421eee0283d00eb1cf6507e4a6`  
		Last Modified: Wed, 28 Oct 2026 09:30:53 GMT  
		Size: 52.7 MB (52667117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd791e49bf1655e2212a6fa90ca0fb7ae631ec638fb616bbb16e2646fc6bfae`  
		Last Modified: Wed, 28 Oct 2026 09:30:53 GMT  
		Size: 72.3 MB (72333518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4822d4f26d25037d9efae3b48b8160349d03a5a224c05f89f9484c4d9542de`  
		Last Modified: Wed, 28 Oct 2026 09:30:50 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:35529806ccb947837f1fb1892b6e656fccf12e96ab74c4ea168e7b4070f52e94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5258598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67bce6da1ba8ed35eab60547e30dfc9a18bd98f475d1303437c0906f77630b9b`

```dockerfile
```

-	Layers:
	-	`sha256:ae75d071ecd578d126e7ed8f7d3e9287bdd8c70f5926ecb2986d0b9ec0457698`  
		Last Modified: Wed, 28 Oct 2026 09:30:51 GMT  
		Size: 5.2 MB (5244148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1364008a75fb8a9033fc7694b2b14e3a5ecf3dc0031e8206904a10453107fa7`  
		Last Modified: Wed, 28 Oct 2026 09:30:50 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
