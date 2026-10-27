## `clojure:temurin-17-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:974564aa4405d4ac017408b883aa39cc33fb882d095520724646555bf6cc1710
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9527d7d8feb3990f7b26c428b9406cfdbb0341c3cff05cb4c6e60dd7b478a2ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240582359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9de9f0cbcdd28e08c3758afcf6c40c9ee1d7e42620aac73aa23806e246b4aab`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:48:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:48:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:48:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:48:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:48:46 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:49:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:49:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4403c3c3bebaf29875b69209ebe71a892241609dc8a8530390cfa59265fd78ea`  
		Last Modified: Tue, 27 Oct 2026 00:49:23 GMT  
		Size: 145.8 MB (145825445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6244bf6373194752c8299ce4e89afdd61891a6bfd0a7c5f593add9a22b2abb`  
		Last Modified: Tue, 27 Oct 2026 00:49:22 GMT  
		Size: 66.5 MB (66507933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d52c3a237a8de2d045135da95681541bb583d57aaca2c6e2014f64f22029db4`  
		Last Modified: Tue, 27 Oct 2026 00:49:19 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97437712d3f770e6e87dc967ad096aacba35b72114829d4c689e7716cf95fe87`  
		Last Modified: Tue, 27 Oct 2026 00:49:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7486edfeee3954f84935ca649a7400683daacf08d85d08798ce83f471f4df4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92460b1fb43e525ac960e9b82542a740ceb84ca7a3ca1d6fe5732e35aec35ad4`

```dockerfile
```

-	Layers:
	-	`sha256:e70731d5bbd5286e65a5ce5700a8249d6cee583577b835dc6ae906e8b7ff58a2`  
		Last Modified: Tue, 27 Oct 2026 00:49:19 GMT  
		Size: 5.1 MB (5118041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26ab482380bd6da81f532556b295f2075a13a1816ea659508cb85ff136dff6e6`  
		Last Modified: Tue, 27 Oct 2026 00:49:19 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:eb2062b9c2426dbb042e41a64fcf35e27f3a70f5b398d2ac9bef2e3ef4129624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239288940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a31d3090b72a70a9a2db3d466fbd120a46df64e0fa2765ef6457900019d77b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:48:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:48:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:48:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:48:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:48:25 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:48:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:48:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:48:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:48:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:48:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a9c635459f56dd81c3b766465675c14d95c6ba9bc23af16976304170c2956e`  
		Last Modified: Tue, 27 Oct 2026 00:49:03 GMT  
		Size: 144.6 MB (144648253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3054b74da72c149485adfd363a72aaaa88b1e248c6a6e1a849be245c2ea6b9c6`  
		Last Modified: Tue, 27 Oct 2026 00:49:01 GMT  
		Size: 66.5 MB (66501220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014dd11202e4ef8c0df293158f48513c293867371628e9d58220eccc3be8b525`  
		Last Modified: Tue, 27 Oct 2026 00:48:58 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57601dab8f835312caad3a3ed509a4eab59841b96a6a91efd13eec0f06cfd5a8`  
		Last Modified: Tue, 27 Oct 2026 00:48:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:79c769cca377c523d308a8084904fede699f28c55c1a608eaf6ecd273aa68e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1589994739e2eb54885367f13851d988d70869d5bbdbf9ecf27fd0a364d655ba`

```dockerfile
```

-	Layers:
	-	`sha256:643dfccee2c1ac18ae045e550005de3ff4f37b96fe078a01d519929ab77de56e`  
		Last Modified: Tue, 27 Oct 2026 00:48:58 GMT  
		Size: 5.1 MB (5123802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d73531ab568a19d546613ec82ca68a28c22e816737fbbcc0dcd583a453b57385`  
		Last Modified: Tue, 27 Oct 2026 00:48:58 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ce761e685258e9e0376836212b3635f9b010b1859cc76515a9e3670f01461e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250098873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbaf8533e11098649a1dcae9ee65cce9cb7cf60ad0a48300014457c6ccd64e99`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:16:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:16:34 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:29:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:29:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:29:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:29:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:29:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbee517126a754df9c55cf053e388fa44232986d93d455338c5c357816aaca83`  
		Last Modified: Wed, 21 Oct 2026 10:22:05 GMT  
		Size: 145.7 MB (145671508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61265a6963f504dea9db1afd4e1ad7dc35c953c97a78af2bde47afc80c9c104e`  
		Last Modified: Wed, 21 Oct 2026 10:30:11 GMT  
		Size: 72.3 MB (72333112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2031b82da7b9b3261433429c80a6ea17e05908b72713441fe74a69b157d2fb`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de909e7e24b759d1110b30727f076b3f1011c21a2dc7871ee16390260eadf07`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:af03715cef4d93552163f770df6f338512f899894f3d53f2bda85bd3058c0a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b77fe9db02a6acc895338ee6c6ba7dbfe397c26ce371f094beb6d43d1850be`

```dockerfile
```

-	Layers:
	-	`sha256:ea57d20564943805d7c6070004722d94451ec29f834795d2c57f5de40105da7b`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 5.1 MB (5123171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b1aa19882fbbec4bba9cbe3479a1944e704fbcebe86f35e5808a4915f51f28a`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
