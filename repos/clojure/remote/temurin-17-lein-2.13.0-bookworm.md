## `clojure:temurin-17-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:d10ad41b18765eee2f282f32df2fadee4e984a0f0b90407f7f08b68972010aaf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ca144e4ea7f1c81cc5f3005f30042c1d6de48972e1b83ffa3cb22351c62f8ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218995758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f33e4138db54e47d19f87b9f5a991d689cb9ff15265c00de73ea21a484a12a9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:17:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:17:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:17:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:17:29 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:17:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:17:29 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:18:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:18:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:18:37 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:18:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:18:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:18:38 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:18:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7f91e7638a2f40638dbdf39dd42116e0b92c7796ac5b3e35f1b50929f78935`  
		Last Modified: Wed, 21 Oct 2026 01:18:59 GMT  
		Size: 145.8 MB (145825471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77aedb5ec2f3d379c0ff98fa3e0b68aad987f1f3fc775105bfc3fdbeadd06fb`  
		Last Modified: Wed, 21 Oct 2026 01:18:56 GMT  
		Size: 20.1 MB (20132566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ce2d96ee00d3024eb1903038ad6a53deb35a997b27e34081979f5ae834152c`  
		Last Modified: Wed, 21 Oct 2026 01:18:55 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72c8e2e9bb289116ba8315809f130eafed40328edab9cedbf066862e05945076`  
		Last Modified: Wed, 21 Oct 2026 01:18:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:33257efeb3d0d76418e653bb29855bd784474ee5a7a043af808972136047eda6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641de6e16f086d57f1cc409fdf8681e7fe0a6fef2657bbd6297f2491ba2e9f4a`

```dockerfile
```

-	Layers:
	-	`sha256:2fbe9ee385f885e636cdb1bb0679203a70818f03aa3ac58f3c092037e0dabd46`  
		Last Modified: Wed, 21 Oct 2026 01:18:55 GMT  
		Size: 4.3 MB (4288004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d052e89e86fb67e3ff46be3c3029a0112ec932ce29813824ca535f81d82d3847`  
		Last Modified: Wed, 21 Oct 2026 01:18:55 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:84adea2837bbb5bb48bfe8d941f0dc23b8f65dbeca0e39e58e21aef0c1382aa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217533598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547bf952c86fce03e29b0ef4a4d00a125ee656c39dd001a77bcc17572cb82163`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:23:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:23:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:23:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:23:25 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:23:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:23:25 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:24:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:24:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:24:34 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:24:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:24:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:24:36 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:24:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea60f139d6c935256cacac9ba2e62c28be9bc972ee7a050923976960cdff10d2`  
		Last Modified: Wed, 21 Oct 2026 01:24:59 GMT  
		Size: 144.6 MB (144648246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82430b821a9eefa7f551b227680d3954c52c0aa82e671feeee18e1d64025624f`  
		Last Modified: Wed, 21 Oct 2026 01:24:55 GMT  
		Size: 20.0 MB (19966599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3e676764c25ac7ab385ff9d40712ede84a953637c2fd94ff067ea438235334`  
		Last Modified: Wed, 21 Oct 2026 01:24:54 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab1b48d32d02fc552f620e5706dbe3db9d5dd3ef6102448e3807bea38042829`  
		Last Modified: Wed, 21 Oct 2026 01:24:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:19d922ebe8b6930fe853e00d6dd200381b1d53d86da2fb3e988a125684d03105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9bed6d295788f77a0764fa6e56f6bcd24846eedc0fa3c77eb96a86dfc2a4213`

```dockerfile
```

-	Layers:
	-	`sha256:86e9511f588d1f4cf9476241cd85d3f2de4a6ace795ff1cb61333e5c78fced1d`  
		Last Modified: Wed, 21 Oct 2026 01:24:54 GMT  
		Size: 4.3 MB (4287619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9741d49146e853d8927359f7fe926c8e2b2abd2ed16738f238e604b59683f1b`  
		Last Modified: Wed, 21 Oct 2026 01:24:54 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2f47c970c917796c8b20502d3664024b9628783e0e918eb67b29e715c96bac98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222908533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb916748c50ad6b67b905526457b967dc9ac99dd19649ba5093f2aaae8f1a3e7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:16:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:16:35 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:20:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:20:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:20:52 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:20:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:21:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:21:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:21:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbee517126a754df9c55cf053e388fa44232986d93d455338c5c357816aaca83`  
		Last Modified: Wed, 21 Oct 2026 10:22:05 GMT  
		Size: 145.7 MB (145671508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea6f73d5f87fb8cbc44e08783ad3fedc78cf9317e46c84752e25a778f0747d6`  
		Last Modified: Wed, 21 Oct 2026 10:22:02 GMT  
		Size: 20.4 MB (20356650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a1044399800de8070bb9769f314af3a571a87cca4bc323846dfd67eece5193`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1d60035277a03af11de013f97d085e5ce04a4af1bce0ec03df03719fce1f1d`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:70993cf97ce839df7542e6dd07bd1b8f1903162ccfd2e3a6e1c258ae847273e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41ab23a92d7fad7adf0d445d85589e68fb37e183a3c790e9f3cf4c42fa33d1f`

```dockerfile
```

-	Layers:
	-	`sha256:b98b8f7d25dbf5c3a69385ca1b63a7aa6c785efc32b4a347f023796c4a5ef02e`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 4.3 MB (4289865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16dd947db815e4cf7f40c2f82d3fcfb6cd41d4fa82ca39ad4c03ce30a8bfbb69`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 17.8 KB (17781 bytes)  
		MIME: application/vnd.in-toto+json
