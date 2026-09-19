## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:20037f1696cefe6929854dfddce17d7ba29f91333fc76e0c48febcf183c44be5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:52e3e0d4a509bdbb2856e3ba8793bfda54bc115abe72a11ea87a79fcd51a7586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.7 MB (145665198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faffda9054ec8493272bfcc0ccc2a8940cd8d8be8c51440dde40be75dc6df766`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:13 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:18:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:18:13 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:19:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:19:30 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:19:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:19:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:19:31 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:19:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58571d39a06756bece3c81bd55218ad556564b9932106ea8a575e98284fc549`  
		Last Modified: Sat, 19 Sep 2026 01:19:51 GMT  
		Size: 94.6 MB (94563736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a8ea8a6a85b3888c82e6f7c3a592c30252bea01c97f094e2a853ade1598f41`  
		Last Modified: Sat, 19 Sep 2026 01:19:49 GMT  
		Size: 16.8 MB (16755454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10087049c196f2aac058a1fb9399bfa706cdc3761208048202e9e139f845173b`  
		Last Modified: Sat, 19 Sep 2026 01:19:49 GMT  
		Size: 4.5 MB (4515161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1783638d18b20f8fde0a55caff7bf1dcafe031d94870c8e971d16945665f8002`  
		Last Modified: Sat, 19 Sep 2026 01:19:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:10e2a2247115d54a932bf550f4f4f5caddd7005422b054b173f3a8348854407e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2355664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce7316182f87b7edaf3c16bcdf18d548ab4d75d1c176f131b1bf9fedce438e34`

```dockerfile
```

-	Layers:
	-	`sha256:62f9f8d043bd93b7c9b3197da8617b4fa301597847e2f96596245ebb4a29edc8`  
		Last Modified: Sat, 19 Sep 2026 01:19:48 GMT  
		Size: 2.3 MB (2337918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccf0820468b4b96a31a0be444acfeb935f12361cb1ea9bb6dc5b0cdf9a6a1ccb`  
		Last Modified: Sat, 19 Sep 2026 01:19:48 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

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

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

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
