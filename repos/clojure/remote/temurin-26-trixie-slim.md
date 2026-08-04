## `clojure:temurin-26-trixie-slim`

```console
$ docker pull clojure@sha256:62c22a81f1bb67e7fb6c57acc7acbecf3f6aea064249447a8269b52998badc29
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

### `clojure:temurin-26-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:91e413c81492f4e098490204dba7f18e30c319bad9ce09f62ff7ba629ad3fdea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.3 MB (193271023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aabe9969c840656ebe17d66dd531fe781260bd291ceadb6117616283ba3c828`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:56:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:51 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:56:51 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:57:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:57:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc089678c713666da3b06ac4ad97d8e7da5b4b54aab6b0037e437d038a416b47`  
		Last Modified: Tue, 04 Aug 2026 02:57:30 GMT  
		Size: 94.5 MB (94524345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a55b6e07942839b2f1f66f52233c2db730de4cc369d809eacee4cc0026a2084`  
		Last Modified: Tue, 04 Aug 2026 02:57:30 GMT  
		Size: 69.0 MB (68964729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377515819fb07a51492e6bad6466a4b17a5e4c5d6b17d26bc4e20f3fe48af05a`  
		Last Modified: Tue, 04 Aug 2026 02:57:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd19463a471ff93ca440454176bc1abccb9ad24f39f6340712588e6c33de66c`  
		Last Modified: Tue, 04 Aug 2026 02:57:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e913c8d0453d851b5775d22faaa138913c70b60a2ac991eba27c6211492637f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1603b2d543433376b859bcae29b5c0bcd5ec99c6d18106214e10a56c20f1f7`

```dockerfile
```

-	Layers:
	-	`sha256:7d7d07761b46daaf48ccc36a019fa67e04740f484b9e64e6d80488a4fad9930e`  
		Last Modified: Tue, 04 Aug 2026 02:57:27 GMT  
		Size: 5.2 MB (5222255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f1c77b29d1f1f2f65b47b20928c7fc2a44ecc15aed47fb3bc38379b3ddfa2be`  
		Last Modified: Tue, 04 Aug 2026 02:57:27 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a74b0b3924bc57afd4385f3a12a02bd20d5adb7a06f38ef1143c3fc87df7db20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192435351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c2331b5355845b2629ce687d35ddd69a0cae3e48a5dbec080d26f5a237149c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:57:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:57:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:57:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:57:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:57:26 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:57:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:57:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc0fbc39316c278b83bedfa99961f2a6514e3ab200419358ff7d4db51d23945`  
		Last Modified: Tue, 04 Aug 2026 02:58:05 GMT  
		Size: 93.5 MB (93504366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67154219efd53f2d688e61d260fb5a608ba7be7ff30302782c3c236b308e5440`  
		Last Modified: Tue, 04 Aug 2026 02:58:05 GMT  
		Size: 68.8 MB (68786239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d922ba23d40a765a1b90057539a5865021cbdac2268614ebc3d43fd53a9418bd`  
		Last Modified: Tue, 04 Aug 2026 02:58:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631309a9756fdd6f7817b9e952f0b8bd88a8b0e09dce9e114402bc4a002a6a20`  
		Last Modified: Tue, 04 Aug 2026 02:58:02 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b23693f0af7c1b95bdee7b5a4b4e458a0b0974ba84dacc4832a5a93fdc636451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66982fddef3b45b8283bef434e3bd63402ec4d304cb3a9eafe3f14994e55b77f`

```dockerfile
```

-	Layers:
	-	`sha256:25851faed26657c72bd5f4395d413b5258065a596309c7ec2a216a2eb0bf113d`  
		Last Modified: Tue, 04 Aug 2026 02:58:03 GMT  
		Size: 5.2 MB (5228013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adaaef0fdfb6044504953c5485e575704e1c43351ad9b2a6ab2f6b4b36e825b3`  
		Last Modified: Tue, 04 Aug 2026 02:58:02 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4b35da881d1819dd1c7696b8b8abc9177a66851b9bfa56964cd6f28c1d57f6e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201880597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33a7e7b2fcc7b603f86da1630cd55a80994202a184c6dec98124bb3140343330`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 05:55:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:55:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:55:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:55:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 05:55:55 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 06:01:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 06:01:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 06:01:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 06:01:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 06:01:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbf38bd3d6e1034cc60476a6be4177b545974325005bb3d2e3ac18376ecefde`  
		Last Modified: Tue, 04 Aug 2026 05:59:25 GMT  
		Size: 93.9 MB (93902068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7de0645fed6f098af6c8bbedb108ac26685dbe1ae07f6489f2756ac33fe621`  
		Last Modified: Tue, 04 Aug 2026 06:02:01 GMT  
		Size: 74.4 MB (74376009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06063eb29ceea4b12d5a830a720c9e4b36071ccf6dbfbcede7f9949bba239b5c`  
		Last Modified: Tue, 04 Aug 2026 06:01:59 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d2bdf3a67ea4f1699b1e2c75f1edfc54fb3ac1570b27709ce85a1833c88ae2`  
		Last Modified: Tue, 04 Aug 2026 06:01:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d11c7a64f7b16c5831a74e9ead22d0d4535edc2e0d365d152d59ca730dd7e25d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:100132e65f1500cd67ab9df3869ec5924bbe9f8d97e8fca91e6b1ad51ce5c329`

```dockerfile
```

-	Layers:
	-	`sha256:0c09d827be818ce67df01d3500b5b09dcc950c100d569ea91b444e1acaf028de`  
		Last Modified: Tue, 04 Aug 2026 06:01:59 GMT  
		Size: 5.2 MB (5210562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bad9966f9926db0ce16339168529fd7a886b2816754671b3c42b0f10883d6d5c`  
		Last Modified: Tue, 04 Aug 2026 06:01:58 GMT  
		Size: 16.0 KB (16006 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:82ebbc67ea516dcdc5ef4add08b9a423c919be1d97301cf76d74a50be70d8b5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190330029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff34f7d60a320106578b8aeee9db86ca96d809706640f76e15b6b49007bdf7c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:08:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:08:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:08:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:08:27 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:08:27 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:08:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:08:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:08:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:08:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:08:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1db3bd289a6c6b4d5495aaea3b2c95c5cb0cbef594631002aed17ba2ac1d0cc`  
		Last Modified: Tue, 04 Aug 2026 03:09:14 GMT  
		Size: 90.5 MB (90536953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d63c0eebc1dfcbd2150e1c91ffd0c4f7d5bb91d88f6d74f6aa390b0f6c46af9`  
		Last Modified: Tue, 04 Aug 2026 03:09:13 GMT  
		Size: 69.9 MB (69945400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2bb2786a428ffbbcca1321a0e98659227e13f286c4099cc929cf45ed8f1859`  
		Last Modified: Tue, 04 Aug 2026 03:09:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2634ea757cedf58f0a9a8994d236fab4c112556392668c7abee3a4279c669d4`  
		Last Modified: Tue, 04 Aug 2026 03:09:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:987fdc58975d087961cdb5e381c265477f8d78430f4cb1c9291c233ad08a9347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b6105596cd85e962f4d3d2547f055575d09cb5b800809b1cc43f0cd6f866d9`

```dockerfile
```

-	Layers:
	-	`sha256:09ac13c042b055fd1c3aa294039e97870d1854b87a9cc444c39bef6990eac75f`  
		Last Modified: Tue, 04 Aug 2026 03:09:11 GMT  
		Size: 5.2 MB (5203365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ede3fc0d6e2ae6cf9e03b200aca55c85c6716ee6b8631a2781425913710160dd`  
		Last Modified: Tue, 04 Aug 2026 03:09:11 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json
