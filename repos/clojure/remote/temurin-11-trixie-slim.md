## `clojure:temurin-11-trixie-slim`

```console
$ docker pull clojure@sha256:39ba5d1824c4f7c749dbabdca9cde76fb4263ab78ca63f72ca18044db382fb2b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a07a0a9749953be31808f333da69027f6d2af4981b5507f2b183453b7e597667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.8 MB (244755753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aff87291a7dd23f243849fc9e7d9f33dce3fe878cecfc814783ecb2b68d7b91`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 04:41:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 04:41:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:41:45 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:09:45 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:10:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:10:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:10:01 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb15f1a0280079814b52be79f704bcecad5306afe3a989e43d45c6e5a146fc2`  
		Last Modified: Tue, 24 Nov 2026 04:42:38 GMT  
		Size: 145.9 MB (145923082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29e31843c8a560d86f6ad43f2a4ea39df7d4b259eacc59e5ad6981caea1fd6c0`  
		Last Modified: Tue, 24 Nov 2026 05:10:18 GMT  
		Size: 69.0 MB (68989849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b87a0e77eb60612932ba6b09adcaf59ee68acac8a4092d8826e2f5bcbcf3387`  
		Last Modified: Tue, 24 Nov 2026 05:10:16 GMT  
		Size: 608.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8a56816a6baaa7809ca09e570e39b461f52b1553359e7b84f7bbb079db2540e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93997449ac0f5ab009a717cc61dbaad014141eee8892cb79ee46ba7c773365fc`

```dockerfile
```

-	Layers:
	-	`sha256:4d87fe01a5b1722415903c6ed3168ff8ce6d365e3f66f0aadc146514595db50e`  
		Last Modified: Tue, 24 Nov 2026 05:10:16 GMT  
		Size: 5.3 MB (5281623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0437179ea3f987cd61df8fa91911b71a8927efe09ba759939795727d7c1b246a`  
		Last Modified: Tue, 24 Nov 2026 05:10:16 GMT  
		Size: 13.4 KB (13442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7e9bd0585919d23a597b87f1da4a4aa7bf36920d4b36b9f8748616a27bfaad52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241627497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0749402f9ed7a2b79140fbc1c312fa097e0e6dc0e26128ad618a64ff2920b46f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:17:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:17:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:17:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:17:34 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:17:34 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:17:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:17:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:17:52 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de480e0210a3b067df5179abb7ba2161f306c639255feee45952dd2210237feb`  
		Last Modified: Tue, 24 Nov 2026 05:18:14 GMT  
		Size: 142.6 MB (142621117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb56613b05257f8cc2e501bce9bac889c2da3c00322f718a3eafccaa6cc354ed`  
		Last Modified: Tue, 24 Nov 2026 05:18:13 GMT  
		Size: 68.8 MB (68807703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b8d43dd2f482139d6a79c159a8abc2af2f9d3480b332850aa71b7d4e314c21`  
		Last Modified: Tue, 24 Nov 2026 05:18:10 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0389040bb0038e79c4208e412f0424d7f0a900a5d9c91ed83448775ecc38064a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1aa7b58b40452a7f77d77dfef471523532ac71d63e8511e52075501934c5e06`

```dockerfile
```

-	Layers:
	-	`sha256:7803dd3c42b1b285d54fa415a664acca460e072b5033efd66e13e0fd2ab2fb24`  
		Last Modified: Tue, 24 Nov 2026 05:18:10 GMT  
		Size: 5.3 MB (5288002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee08e2c583dea3d1585ce5eca576cfb8b67f3e02e5b7c390501f5d5640a4f6ed`  
		Last Modified: Tue, 24 Nov 2026 05:18:10 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:27733b7fb4f8af63e6106a57c3d1f5ab2b61818d3f78a39270207a6b71d81351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240335862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735e38904717e6f489097daabdd0650b1cfd41453bcb7732a55b006aa02e141c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:27:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:27:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:27:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:27:30 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:27:31 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:33:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 12:33:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 12:33:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b200549180e0ac6d348d09e9eaa1a642a7f258785cbe84e00165e02e14b70b`  
		Last Modified: Tue, 24 Nov 2026 12:30:51 GMT  
		Size: 132.3 MB (132272159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1074bc28d97b892120a110e084b8f362617cb0d4defe7e22af93c515d0426291`  
		Last Modified: Tue, 24 Nov 2026 12:33:45 GMT  
		Size: 74.4 MB (74410421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6c7c6d5e388865edf61751e52ed318a4af5ddc8fd86b09ae7a8f6abea725c9`  
		Last Modified: Tue, 24 Nov 2026 12:33:43 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:06db6c369d61205b1b945c850ebcfc2aa46c7acfef54cdb3dba10ca9f8f14737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5298578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7ce6515d1a10eb91d511582a002f1dfbd08a9a3efaaa5a285512d659db20cc`

```dockerfile
```

-	Layers:
	-	`sha256:b68cf1b8e91312518cc61536a3dacf7c6265cf66e8b3312ec23e93bf6c3207a0`  
		Last Modified: Tue, 24 Nov 2026 12:33:43 GMT  
		Size: 5.3 MB (5284133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efb98679bf680d2652a2eef3b6865a18cd235f7711b5442a54aba8cd95b06424`  
		Last Modified: Tue, 24 Nov 2026 12:33:42 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
