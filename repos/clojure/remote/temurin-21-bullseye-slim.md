## `clojure:temurin-21-bullseye-slim`

```console
$ docker pull clojure@sha256:9a9fb5dd336550c3f1d8d6284b1d5e0daffba3a70570ff527db68596c757337b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a2f5916ab58d807eaffe7ce5a19c919ca818cb3f1e8912e7ea8ddd04a60ced51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244508948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcba6ec5e5da5d49f394c08bec36bb71c2d709680a22f880139ec99983e59522`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:03:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:03:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:03:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:03:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:12 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:03:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:24 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625dc4388d4437fc5e812f3755ec7265d96bfd41614aea99ce18df8e83232cc2`  
		Last Modified: Fri, 04 Sep 2026 00:03:44 GMT  
		Size: 158.1 MB (158120303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30f76a06e9018fd42ae1fb3bcf7c912e91824aef21d6aac6447e928011c852ca`  
		Last Modified: Fri, 04 Sep 2026 00:03:43 GMT  
		Size: 56.1 MB (56127877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e93372bf4d688b1dc9442036bcd8296aafbf9fc816778a9ea37759d76a14d1`  
		Last Modified: Fri, 04 Sep 2026 00:03:40 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7419a8883bdc83cba0537eea45b63869ccfd3bca01dbe7051a5cdc65d591d1a`  
		Last Modified: Fri, 04 Sep 2026 00:03:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ebd7030152be508ffaa80990e5a0341d524534ca13ace11830d0f91c23937612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5340892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bf02966e4ad1f924aff753fbf46e47ecb4247d879095da9cb95a5facc298316`

```dockerfile
```

-	Layers:
	-	`sha256:6cc5e1286d87f9882d1803d29802f4893d11d2bfc9bed6476da37e13569ee4c6`  
		Last Modified: Fri, 04 Sep 2026 00:03:41 GMT  
		Size: 5.3 MB (5324902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e85dd5f112ab00cb9404836bdaa82c42c097c28482f9738f28145f847aed2753`  
		Last Modified: Fri, 04 Sep 2026 00:03:40 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:45f0268713925aa63793a894b62ab3871c419596bf456527d4d4c66fc2ff36b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.4 MB (241439653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbdb310fda611f7c7b9df0b285152268ab96d016ad6ef5af7277c9b2f323a0a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:07:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:15 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:07:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396ea97abc9c36efb758696337fd0a9c601fd4982fb27a642c36eb546a38c3f4`  
		Last Modified: Fri, 04 Sep 2026 00:07:51 GMT  
		Size: 156.4 MB (156401970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdbd303b3d40b74edcbf5ca186699a21ea41f879147339a30111f5ed8406b84`  
		Last Modified: Fri, 04 Sep 2026 00:07:49 GMT  
		Size: 56.3 MB (56287613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638dde012ae542ff8470360b213d0e61ff95adedeee47fcc66bcad0d5ba8dc4e`  
		Last Modified: Fri, 04 Sep 2026 00:07:46 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8053fb4e175c93d88d3e3e303ce6a65e5233c1141aaf4a5ce68efc22d52b34`  
		Last Modified: Fri, 04 Sep 2026 00:07:46 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:77dda8b41b76db81bd9baea0a2c25ab523729d4ad3983f0d6d314bd8db354d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5346742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef8db17fe082ff050847f4bab52d2b080bc409cfc5112d54d27c9248a2e6a9e4`

```dockerfile
```

-	Layers:
	-	`sha256:35f8d1c6779bdb653b3692a5d924e72bba1b917a52990b574c17f1893c437daf`  
		Last Modified: Fri, 04 Sep 2026 00:07:47 GMT  
		Size: 5.3 MB (5330634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d058834ebde9cab89720bc203f5a738f92e4187c2275aab36ea28800f6c6bf3c`  
		Last Modified: Fri, 04 Sep 2026 00:07:46 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
