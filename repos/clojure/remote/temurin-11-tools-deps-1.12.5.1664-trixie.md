## `clojure:temurin-11-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:eabf58635ca9e622b7ee7e3decd522195fd315d1e6dcbc30d5591a405a4a37ae
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

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:16e72837b037ea3b0b898fb9edd3e90ac2883fdc78b80bfdca491401743143cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277737130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9868aba3b2bb006d14e57f90128af6610bd1713b5353d6223bace3e0297627ea`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:49:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:49:13 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:49:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:49:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f075dae968de9db1ffdf6208548d34b74c610126917d1873ef48c856f9fdeb22`  
		Last Modified: Tue, 04 Aug 2026 02:49:54 GMT  
		Size: 145.9 MB (145886340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f5400dfc07a4a6deb4f8b58d2b19d2512e32d71ab07dd546f9d98f505a6a72`  
		Last Modified: Tue, 04 Aug 2026 02:49:53 GMT  
		Size: 82.5 MB (82537572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f6478914ae975d68670c4f088e31a7eb8ba03ee2c3d75fede4f01557f05a93`  
		Last Modified: Tue, 04 Aug 2026 02:49:50 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:27d1aba844e8dcef1a86b8075a96371578f368cc468256ffe44c80f224c3af27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f3c4aa852abccb9cf8fcb7488257074a57b27d922005cb13f50b3ce5e6aa472`

```dockerfile
```

-	Layers:
	-	`sha256:433acfb93c2cc7a8e3f4d7942fcc0bc221a18cff1e61c246eefb9837dc04816b`  
		Last Modified: Tue, 04 Aug 2026 02:49:50 GMT  
		Size: 7.5 MB (7488409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:227d35d946108ff20e39e95c9fe4b5906a582223bfd4c272c5f1c6f03836e5ec`  
		Last Modified: Tue, 04 Aug 2026 02:49:49 GMT  
		Size: 14.3 KB (14338 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:06b62b3060ed554b48347f4f824fd6752aba8c4a9a3fd0e83c09248196131e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274616390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390ad3a95cc5be2cfffccb76e291ec676da5aa98d9dfc1b62c72754f0ae3764d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:49:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:23 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:49:23 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:49:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:49:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f6cbe5facc5051cee768fa04b0d193ec2797beebc1108cb0e99d06d907392c`  
		Last Modified: Tue, 04 Aug 2026 02:50:05 GMT  
		Size: 142.6 MB (142582304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28760ccd679859b40805eec6f76f8c48c70a368f894ef10a3f3d406c1efbef5a`  
		Last Modified: Tue, 04 Aug 2026 02:50:05 GMT  
		Size: 82.4 MB (82359257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec861a1d78ac88e8a20fef9fe200645034b6df1fdf91c53159772189cc934e71`  
		Last Modified: Tue, 04 Aug 2026 02:50:01 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2f4f0fa39303be71a13d633f48c4efbd5aa58ba8ce63e758e455ba13d360c55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7509877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09b281b137f301c21fd5f3ceac04499223250bf1c80b0eb850f965d441e2295`

```dockerfile
```

-	Layers:
	-	`sha256:054a76fd54db6a556fde2d258356da5cc0606990f3186af61e38d080b756a615`  
		Last Modified: Tue, 04 Aug 2026 02:50:01 GMT  
		Size: 7.5 MB (7495420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2df42fcc16884f25738465718ea92e42fe095df24d89b7434d5a97b17f9e603b`  
		Last Modified: Tue, 04 Aug 2026 02:50:01 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:70430512045a8182c102efa620e401a073678b6b1f3dc78f9e5191369313f251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274193550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384a58fdfebee52188c85a8eeec420598a7646ab3e1a470c2e0ed4408993d821`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 04:58:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:58:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:58:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:58:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 04:58:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:05:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 05:05:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 05:05:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93730265af21325f754e83e8547865c3c756bd4c967fa218e90a090a099b51be`  
		Last Modified: Tue, 04 Aug 2026 05:02:10 GMT  
		Size: 133.1 MB (133109682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5377263635d5538315e1003bdd780b2a65e1803fe1ccba4f78e3db9c26773b3c`  
		Last Modified: Tue, 04 Aug 2026 05:06:27 GMT  
		Size: 87.9 MB (87949212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a6bf043a70b7a9350aebba2b4e9e543bc6729be8630564c3665ad69844e623`  
		Last Modified: Tue, 04 Aug 2026 05:06:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ca41a00af7ac7890afaa723f192565d17fc679486d2e01906c85e864c0d04716
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7506602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea89af73967fb1513c7a471c6621336f3bdf6c322c4523e651dc9e92dd88ac0`

```dockerfile
```

-	Layers:
	-	`sha256:93732efa154ce11e557f8edbce8b4c5165096d67eb14ccb75435db34159651f7`  
		Last Modified: Tue, 04 Aug 2026 05:06:25 GMT  
		Size: 7.5 MB (7492215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf1de5ecaff401c1b9829e3f87e39954f2321db0eeb9938a98d675f36bbfccec`  
		Last Modified: Tue, 04 Aug 2026 05:06:24 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:135b4150c8feee09dcc34358ae082496a76fff40081ffb7a98515cde7ce52cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259553258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9374b24391c7d3c4146a377f4589432d913d6b0b257e5d4c818bc93e38b2760a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:52:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:52:20 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:52:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:52:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f9143802107467d216278cb75bf4d189760a6305aee4414b2140a7f68f5e6c`  
		Last Modified: Tue, 04 Aug 2026 02:53:07 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae28309928ba6bcac8935a8b13136b4e1eb9baf4f461c003f604ac5e7e050a5c`  
		Last Modified: Tue, 04 Aug 2026 02:53:07 GMT  
		Size: 83.5 MB (83518491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aaabb5520228f462c77fa6dd0f1480e8b3bc07e9d816a3694abc685fcd6152`  
		Last Modified: Tue, 04 Aug 2026 02:53:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:041e27f5898c4163aa254af160586dfc23b38f9ba370473267b2e2f79e856380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7498673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3583f5effea366b51c4a747a9dc9b7ebae6048689017105fbfdbab515a2f0f7`

```dockerfile
```

-	Layers:
	-	`sha256:12ffbd89e5a2e4d7f4b3dcb56654e3a1442bb3ecc38eee5f0d700e89b2f8cc03`  
		Last Modified: Tue, 04 Aug 2026 02:53:05 GMT  
		Size: 7.5 MB (7484335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf8562b531ea91681f804d2f2e0d9eaf5c75b613ff8ad30a34c472c6eb174ca`  
		Last Modified: Tue, 04 Aug 2026 02:53:05 GMT  
		Size: 14.3 KB (14338 bytes)  
		MIME: application/vnd.in-toto+json
