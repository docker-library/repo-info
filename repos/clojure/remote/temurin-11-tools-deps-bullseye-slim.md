## `clojure:temurin-11-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:ddedcbd9a39d4d513a2f75cd917037fc30eeb255193b2a69c2c3ea0f4918fe90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:027b69d3f0d630ae93409c39576d51e4c7ee941698d1126c630390e2a37b5214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232246812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f486142577907636bc73d0cc7f094b7a8e2141240430f6f3912dfb9ba922ce`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:17:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:17:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:17:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:17:58 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:17:58 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:18:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:18:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:18:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a0ef5c12c54531a4b3cc7b9a859e9c8bb7e832319df07cbb257b761866dd67`  
		Last Modified: Tue, 14 Jul 2026 02:18:34 GMT  
		Size: 145.9 MB (145886183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c65eaa41887c5bc22bc726f8f4cbf455eeaa0e5f0abe589a300e249817d3422`  
		Last Modified: Tue, 14 Jul 2026 02:18:33 GMT  
		Size: 56.1 MB (56100233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c18423d5974680ca2ebb146b11fd06bd1c28be5092f679fd0258c8d9daf848`  
		Last Modified: Tue, 14 Jul 2026 02:18:30 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:762a6504383e19dbf803e8b89e07fd16c75ea275b6a152a6048f0b65054dd3be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be51091bf4f95ef3e086c8a0d691c8b5ba5ebd474416e003aa9cf8067c5f2fe`

```dockerfile
```

-	Layers:
	-	`sha256:3b0fdb2bc99e8cde9bd216a14383a4bef0a20a519c2ca9a1ac14d830b839f126`  
		Last Modified: Tue, 14 Jul 2026 02:18:30 GMT  
		Size: 5.3 MB (5337365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c989f610d93272152118671a2be635ce658242fc6af99dc6f8ce5ed73263a08`  
		Last Modified: Tue, 14 Jul 2026 02:18:30 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8bc3502e87365dd87dd9de040833ad54983428642c5372e40cf608fc3e3ec361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227599561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f084dbadbbfb7585d02bd735a8c0f3fce4e38e632b888bc28c71fbf5064a50`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:24:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:24:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:24:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:24:49 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:24:49 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:25:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:25:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:25:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27b9ff629719589204558195cd879ebe9ed5d7c4004ecb64cb02ab1527577af`  
		Last Modified: Tue, 14 Jul 2026 02:25:24 GMT  
		Size: 142.6 MB (142582194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14111eb06a21671af58c15ef15c76ab97af626a494e54725783ba9cb513adea7`  
		Last Modified: Tue, 14 Jul 2026 02:25:22 GMT  
		Size: 56.3 MB (56267737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d3d74a8ba27d0daecfed6c7beab76383ba70d4e076723f9327b95461b1d6a6`  
		Last Modified: Tue, 14 Jul 2026 02:25:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cf7f032962a2caae099764f07bfe5e8387b37c957ffc3b76cc9be74e7911c619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5358254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5146fcd5d6063636b110ccdc855e15f078e1b39fa3891284d352a95077dd19`

```dockerfile
```

-	Layers:
	-	`sha256:2ec2099a95652d7bfed28423abb71d25c340f44fa4881d496ebea9f8b862da0e`  
		Last Modified: Tue, 14 Jul 2026 02:25:20 GMT  
		Size: 5.3 MB (5343715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d8ce16417e0b8b72a3a24da4afe786b32f89b77d6144ceba9a73f0d5b384b3`  
		Last Modified: Tue, 14 Jul 2026 02:25:20 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json
