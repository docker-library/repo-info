## `clojure:temurin-11-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:ce13c677545c9a0ffc9113559c5bf5ebd94d5d3d1ca919e97f3903d9b9c411de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e04c94550ab20c9e9a5efe2616b4d6a3c5c798b979832add112005471b6b9819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232252555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b0c1493dafaaf10ca0d5b84dba437d99a51ac8add9cdc12428aae040184fa05`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:48:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:46 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:48:46 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:48:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:48:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6894783de3dd7426d5f795dd9b98bf464b3e150f737dbb8e2c1863c6af3703`  
		Last Modified: Tue, 04 Aug 2026 02:49:19 GMT  
		Size: 145.9 MB (145886280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208456e0ff854064f9b39f58a6b9013fba8958544b9c881d6c6c927193809d8c`  
		Last Modified: Tue, 04 Aug 2026 02:49:17 GMT  
		Size: 56.1 MB (56105876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e5934b534c36e89a616e6d2e7baa211f5e4929fa35316361c3ffa7ece1e19d`  
		Last Modified: Tue, 04 Aug 2026 02:49:14 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dfea6692fb5ecaa520b2654932f04f4776463581af2580fa98ce70592343b186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd4d4825483cf11df749f2ef5448efe8c4ce1dc5dc6463d7da254ad7d9618a4`

```dockerfile
```

-	Layers:
	-	`sha256:3155b193800e6072f47f81723f449c78d28eeb03b6286768dfcd902f20ffc890`  
		Last Modified: Tue, 04 Aug 2026 02:49:15 GMT  
		Size: 5.3 MB (5337365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44a3493f8f2758aa57ce0e631ded7fd531e1e0720b155ead55dda7de02b36e6f`  
		Last Modified: Tue, 04 Aug 2026 02:49:14 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0ad7fa8a73ef0d8503add8a4b63daed50bbd2042807089b9584d8a5bd7a9142c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227607748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50a970bf9e2269f6c1b3c33fe2df6d9a5256342be411c2f406811de53eb39a1`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:49:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:49:04 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:49:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:49:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502af9c5828b740f70337d0ffd375b12e1255633e50eddbeb1ccbf1649d8c55c`  
		Last Modified: Tue, 04 Aug 2026 02:49:39 GMT  
		Size: 142.6 MB (142582307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52955dc349b286a8cb960fb0abe2e4a7fa3e95f6a2aed5626fa5b018b21b75d2`  
		Last Modified: Tue, 04 Aug 2026 02:49:38 GMT  
		Size: 56.3 MB (56275812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f843d18258214d35273d12b2b2c016c34727499520ae07406f246dce0b9cc7`  
		Last Modified: Tue, 04 Aug 2026 02:49:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cf7c8a3ad4a1430510891f1827f6cca482f8eb0c47b39ea480c73c8d0c58e481
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5358254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc0b62577685c1bb45b77525591163e0db9d2d57320c7a7b010ad310135772c`

```dockerfile
```

-	Layers:
	-	`sha256:43aa799151dd546ac89826ea2b6492f7e45b03213efa7d2bbf9cb173d08ed7b5`  
		Last Modified: Tue, 04 Aug 2026 02:49:36 GMT  
		Size: 5.3 MB (5343715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6febd8c9cd9146e4f7fb027f85e759f7fcc9fb55d513eac9f24ecc5e7099d1b9`  
		Last Modified: Tue, 04 Aug 2026 02:49:35 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json
