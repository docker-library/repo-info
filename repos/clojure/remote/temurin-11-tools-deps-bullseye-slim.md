## `clojure:temurin-11-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:fca36ccf0bf750638c207890a99fed846c729f3fb7cb16c3b702635b587c9f18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:54d8cc7c6f622146f5668041808889b1a8a4bc7a9b69cd132f2bf03821da38ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232252650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af28e0c8fe01e5e2f46fd129dc5f72a158cd1ad86f104b0ce267fbec9a5c363`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:55:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:55:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:55:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:55:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:55:36 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:55:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:55:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:55:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef12a51ea9a33dcadbe2c70b2742178d38fccecb3e7ef127f2af2ec6bbe2dd66`  
		Last Modified: Wed, 29 Jul 2026 17:56:12 GMT  
		Size: 145.9 MB (145886159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c12970f5b0b2bdec6599df08b54ea5117c5b0dd942cb1fbdd78a527116b335`  
		Last Modified: Wed, 29 Jul 2026 17:56:10 GMT  
		Size: 56.1 MB (56106091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968460ca4f20ee8345cd30137c1676dcc3940c44012754eedfb9aa9418e7fd65`  
		Last Modified: Wed, 29 Jul 2026 17:56:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b8bb74e7e9f446ce98d099b57833aeb916c8605e7ec369813876b7a60a2aab70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2156659c44a8ba2f9d2389adc5341367d6321349fa22db61a5f05c91378233d9`

```dockerfile
```

-	Layers:
	-	`sha256:2440ff5b8bf259bf7effaee6c9e4b7facaf0b48fa367a34e2d036a7d0327b412`  
		Last Modified: Wed, 29 Jul 2026 17:56:07 GMT  
		Size: 5.3 MB (5337365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80cae8e4034104b1ce5479b84a3b92adb9c25f3e7ba0b14f457a1613a2a41dbe`  
		Last Modified: Wed, 29 Jul 2026 17:56:06 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:59293dd01d08e58fe6e4899bb5918c40bb0ac35a93825a98e984820740148dba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227607825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7659efdbb16251b958a49cbd7ed7e52b9109a6636b6c49d0f9543050ba11c42a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
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
# Wed, 29 Jul 2026 18:04:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d5bf5cdce4df46b7ce865f4abb3d2837075405cb657cf812f427afd15b190b`  
		Last Modified: Wed, 29 Jul 2026 18:04:40 GMT  
		Size: 142.6 MB (142582143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffc094d1c698581ca58da9bb1a73689dbcd0bcb454aa1af2bc07868c28979d1`  
		Last Modified: Wed, 29 Jul 2026 18:04:38 GMT  
		Size: 56.3 MB (56276054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c2be2c68932bde0efa2874ba180b82640c9e9f731a418555e1a25b543ab109`  
		Last Modified: Wed, 29 Jul 2026 18:04:35 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:94f27bd664ffd51a958f4ebeacb61558e796fbb2c99b544960a8c1caef1e22cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5358254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a6b129450f149cfef1658e8d13ef82c02365858713f6274ed253796d072b05`

```dockerfile
```

-	Layers:
	-	`sha256:9807950f4c7d69482d2e6fa122b4e911ce99227558f180d498925e14ffd74bbb`  
		Last Modified: Wed, 29 Jul 2026 18:04:35 GMT  
		Size: 5.3 MB (5343715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d349c4e3ee3b5dd1576bdcae1016e4e10782b561b48472220ae3125a66ff1b1b`  
		Last Modified: Wed, 29 Jul 2026 18:04:35 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json
