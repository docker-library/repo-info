## `clojure:temurin-21-bookworm`

```console
$ docker pull clojure@sha256:c1749b50cb7b20fb0be8edd93170f031c7a0cb3c6082f797abf201f5c4302ff1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:fc3e7d9a3f26424359bc5797711443718fbbf0dd7d6b84e9a65459b53d3c6009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286924508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b27140f5ff79b3f94fc9e8cee06e1f9b50fd81d9f86f6c6c46d0a57ce2ac3e1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:50:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:50:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:50:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:50:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:50:34 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:50:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:50:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:50:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:50:51 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:50:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0420eca464168cb5246b22d486ea8a15a64f9669e759a12c9f09574160e838`  
		Last Modified: Sat, 17 Oct 2026 01:51:14 GMT  
		Size: 158.1 MB (158117468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e2c76748d696e4fec529d56ec56fd67ec0e53fb24cd3efca1fe2500719e2862`  
		Last Modified: Sat, 17 Oct 2026 01:51:12 GMT  
		Size: 80.3 MB (80287979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3c24e0b76ec55630fa66c5236f5df6d75e1c5687917f2edb15e4c5129ef5c9`  
		Last Modified: Sat, 17 Oct 2026 01:51:09 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8ee1a8286a7484373a485107980e85d96510435a552def5a0f85dcde1933d2`  
		Last Modified: Sat, 17 Oct 2026 01:51:09 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7fa61b7c915f0a45eec760d934b4edaa107d4c2d0daea63c36a40a0a2b3b5c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7399792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c3dfcb1b729eba98f7733125df3c4cb377205bd6226c7f4da58517b2824b2e7`

```dockerfile
```

-	Layers:
	-	`sha256:453239765caec3b844eb547bfe3bff3a578a748952bef7c6289c93439503a96c`  
		Last Modified: Sat, 17 Oct 2026 01:51:09 GMT  
		Size: 7.4 MB (7383176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b9b2b8904e5b17c65a531726f2f5f23a5f79574044e056c3c4c0d434dec2e5e`  
		Last Modified: Sat, 17 Oct 2026 01:51:09 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d03f3d7fcb6c0a17761734bf7a0d876c252dc4b2f1e504de11a246a914d26632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (285045535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8947c976042c52871f8899fda5db97a8a137cb406434ceba6ff866f7157fc1b4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:50:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:50:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:50:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:50:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:50:49 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:51:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:51:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:51:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:51:06 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:51:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497333f93c42ecef49099350cbe71f472510fe5e547c12172871aa0a61e0fe82`  
		Last Modified: Sat, 17 Oct 2026 01:51:31 GMT  
		Size: 156.4 MB (156400685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a4c39296d1e40525b7136217f11634d140a6e8c4134da8aaeccf526465c3b6`  
		Last Modified: Sat, 17 Oct 2026 01:51:30 GMT  
		Size: 80.2 MB (80242251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60f74a971567ccd42de6b53e82a603df930db60e9e27987e6daf02b29d8b9a6`  
		Last Modified: Sat, 17 Oct 2026 01:51:27 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26f283ef6449d37d11b0bb5e68f846a2e055018356884e46bf46fa990f1efab`  
		Last Modified: Sat, 17 Oct 2026 01:51:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9c802572f11c5484e85e2e853f5f3838a8dd7d35e0ec64ef6819ebebb5cd1657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d2963dce27feae9a0797377f011e4496757ae6a0ed14fb9b8364dd55d33a5a`

```dockerfile
```

-	Layers:
	-	`sha256:e59360d10d5925f3428d372a974e6184cacecfd8a9aee6ce6dd661f693421bfa`  
		Last Modified: Sat, 17 Oct 2026 01:51:27 GMT  
		Size: 7.4 MB (7388963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a69a8f6e75f71e2acd8c37a2ee3614690db25491cab32d6d74ed3980fe0f140`  
		Last Modified: Sat, 17 Oct 2026 01:51:27 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:fa1bc9d1b1833668a2362ddca1e5094e4b16ba96cc556bdda86b313102bf80f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.9 MB (296908094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b4d4d1a2fafc474a09154320d2bc88eb694af04d0667e3c1b600757cba4901`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:17:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:17:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:17:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:17:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:17:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:29:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:29:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:29:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:29:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:29:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39eb49c79f6fd358bbb7683a7bb423a82f3f838344c42ac4fa4d3d7452e500e4`  
		Last Modified: Tue, 06 Oct 2026 10:22:16 GMT  
		Size: 158.3 MB (158282647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b2f64a97d1c34faa7a43ee21f2d89bc28d1b08888c3133fc375df2ce0e4dc9`  
		Last Modified: Tue, 06 Oct 2026 10:30:17 GMT  
		Size: 86.3 MB (86261666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fafac7de767c0eef14fba476a39e5085853a55ce8eb9cc50016ee75cc545f9f5`  
		Last Modified: Tue, 06 Oct 2026 10:30:14 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d308efe367ed2f027d3157af211670e64692d55aa6bf97fb248dc2826747e9f8`  
		Last Modified: Tue, 06 Oct 2026 10:30:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:aecfd5f7f2f9080900cf689a584a2e2552543f9f34d29a5992328fe955e9bd28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db7521c573b017ca12128231e9a94ee4824e0c090ba4610667a1943fdc9c4d45`

```dockerfile
```

-	Layers:
	-	`sha256:1a91bec27d8813980dd351ae6c9145994ac0c0083e5a288ac47c0a53b4db6499`  
		Last Modified: Tue, 06 Oct 2026 10:30:14 GMT  
		Size: 7.4 MB (7388402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41aa716b3ecbfff5cbe672da6b2f451fc83c566fd3e894956538e728d44b1ce8`  
		Last Modified: Tue, 06 Oct 2026 10:30:14 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json
