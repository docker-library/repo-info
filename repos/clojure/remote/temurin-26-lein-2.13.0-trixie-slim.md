## `clojure:temurin-26-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:6f50e6b988e41ee56fd59c4df7f8faf5ebbfd17a66453b3895d234ee06c235a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9d9102e5c4e3768604f6a5e45a45822ed95ec1356bee5baa86024b6a313d6241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150976235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab444cccf5e89195b939ea433012cbfac2248f5ecdf0a6286082699f4ac1ce59`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:38:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:16 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:38:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:38:16 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:39:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:39:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:39:34 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:39:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:39:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdaed28df220606b4ddddebd20ed57d29b660398c05e2d9a030ea196003900ea`  
		Last Modified: Wed, 16 Sep 2026 04:39:57 GMT  
		Size: 94.6 MB (94563698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceff9bcf341af511e704347f4ea9d11e85c03ca35a0fcec9ad704d85ffbeb47c`  
		Last Modified: Wed, 16 Sep 2026 04:39:55 GMT  
		Size: 22.1 MB (22104286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7049076de9587d5e07c9670633f77e853327c869e043316850976dffd2448b3e`  
		Last Modified: Wed, 16 Sep 2026 04:39:54 GMT  
		Size: 4.5 MB (4515164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e19fb3716af787aca3763f5daa47ea7ba299c811c1d7fce6c68f6a734b872d`  
		Last Modified: Wed, 16 Sep 2026 04:39:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ca0a65496a7c4f942e6f564fc2518364ef05bd21e8a41f144cfc9e4deffe2baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f1036870bc3d1ed280c15a87ef4dba2746324b6b9ee9c94c883d3f66ae68d7`

```dockerfile
```

-	Layers:
	-	`sha256:32126ffc0b2a97de90ce75388a59110e5b6ad63872e44f2f229f625178a4876d`  
		Last Modified: Wed, 16 Sep 2026 04:39:54 GMT  
		Size: 2.3 MB (2332244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47641c3816632c73b60a740e10288ba8a6de3167de2b559dc1be388ab634aeb1`  
		Last Modified: Wed, 16 Sep 2026 04:39:54 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a842eb61580dd570988c4faf2f4ada6e72ba554c19538edee0586245ab2b3e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144958584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40d838f5abeddc8ccb20730d837e00e81c5b7dfaa92c331dbe6b69bfe241aba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:25:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:25:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:25:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:25:33 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:25:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:25:33 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:27:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:27:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:27:14 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:27:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:27:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:27:15 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:27:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d52b79bed38341ba2da618b66f5ee94d2d1b01c7368cf99875be2098f6fe8ce`  
		Last Modified: Sat, 19 Sep 2026 01:27:34 GMT  
		Size: 93.5 MB (93541602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92e0dd7aa87c1b7976fd99689ebb4f101e9c6f8b19b9dd14eefcb723e5b0978`  
		Last Modified: Sat, 19 Sep 2026 01:27:32 GMT  
		Size: 16.7 MB (16711688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5390bd32a709afb18e5991163728e355163a2361072e51ca3828439b463d09`  
		Last Modified: Sat, 19 Sep 2026 01:27:32 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ec858eacde8182f96114c9c61c65d4d09a29491b66b04568c359efabf2a147`  
		Last Modified: Sat, 19 Sep 2026 01:27:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:33c7717d2e7b2bdb7c459959c5191cba0db7f4b6f5dc40288cdfd78e82f04758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2355392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf89f08f54e202680e80779b17f833130e6a2b8fcf28b838703d614692a1ad0d`

```dockerfile
```

-	Layers:
	-	`sha256:39bf3100f2f3a96969ca7478f5931c99d2a8f1681584b8ce6e0a01c743d229d6`  
		Last Modified: Sat, 19 Sep 2026 01:27:32 GMT  
		Size: 2.3 MB (2337525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:057d942490b0a9930666978704f8a71d541e686126d497b8b989960e8ebe88ac`  
		Last Modified: Sat, 19 Sep 2026 01:27:31 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:db79211bad88b1c9c5d0d6fd55b6bdceb58c2f52446f8a0a5f8b43bbc15781a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151472141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007750e54b91f93f6222c0fec5034d8197c334eda99e488100ccad21e9014914`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:34:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:34:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:34:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:34:56 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:34:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:34:57 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:26:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:26:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:26:49 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:26:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:26:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:26:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:26:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4043e66657eddd8a50944b0e499e9fb50476655ec17f37cf9fa8b81d6068c1`  
		Last Modified: Fri, 04 Sep 2026 00:36:34 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608b3a40f1878f85d44bc480856c9aa02ce972baaeaa34726cea2cca44752cf7`  
		Last Modified: Wed, 09 Sep 2026 11:27:10 GMT  
		Size: 20.0 MB (19990246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785db7c026bf4be3543d55da23f590ebe0fdcb204e914e525bf9361805884251`  
		Last Modified: Wed, 09 Sep 2026 11:27:10 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53317f38b0ecd3fe6a3591b13de2068eca12341e83328296dc9bc571fb2d6c4e`  
		Last Modified: Wed, 09 Sep 2026 11:27:09 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0649eadc58ef6a699cd39373f30bd825e84defa86e96a68d154d50804f835d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc53aed0a05006456bb6c0d9dfac4252e75c1cd891b3c1aa86dc605ba09874b`

```dockerfile
```

-	Layers:
	-	`sha256:3a88b2a68abac287cbad2888a81b0a4c7ca41e51be693380e591dec3de6cb05d`  
		Last Modified: Wed, 16 Sep 2026 11:01:33 GMT  
		Size: 2.3 MB (2317124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e19b66d8aecd39f519988c381cabbd053fe732c9dc25269d222ceb15632f69a2`  
		Last Modified: Wed, 16 Sep 2026 11:01:33 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
