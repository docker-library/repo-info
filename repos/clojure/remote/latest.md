## `clojure:latest`

```console
$ docker pull clojure@sha256:49d84365f68bf1563022879dd7716e05b26fde6ce3bdb31f821842bb491bf7d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:70ab8d2889a30f606307cb5d81565c74ebb6c811b7cf0c86764732b4cc5327de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237866497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0032d46409a4da132536fc4a910019ecf130a5429f335bcfd8b3395c8a3f9353`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:15:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:15:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:15:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:15:05 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:15:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:15:05 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:16:21 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:16:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:16:21 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:16:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:16:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:16:23 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:16:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:16:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:16:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:16:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:16:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec69c67555253027f475a7abe807c7884dda24245f81bed9e0ddd6a8046f40f5`  
		Last Modified: Wed, 21 Oct 2026 01:17:06 GMT  
		Size: 92.6 MB (92618013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f63b40ea520dc59c571c0c00b64f9ea3e901b39fe0e92dd4758ab2f9092eae`  
		Last Modified: Wed, 21 Oct 2026 01:17:03 GMT  
		Size: 20.1 MB (20132737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9197844e8205ae810519f66466a9e9c5c13dc87962104b15cb907a55c0223d4`  
		Last Modified: Wed, 21 Oct 2026 01:17:02 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6e7fc43607a7407034c31701f26bde27c5e1a37568cf23062023a877c55071`  
		Last Modified: Wed, 21 Oct 2026 01:17:06 GMT  
		Size: 72.1 MB (72077379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b4caf09b28c290d9d1d5c562a8647f184f83081cfae54e0ec69f4f834dfcbe`  
		Last Modified: Wed, 21 Oct 2026 01:17:03 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3dd2295e964bb8406834a59a647b0eb0e332d995f23cd4281c194ea97ab1b62`  
		Last Modified: Wed, 21 Oct 2026 01:17:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:4e199fcd70da3d0dc20cd0aa472346525bb0748ac4bf0ea499d763772064aa6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a3f3ce3e46318a79f8814c7e527bc500d0436aee374b6a10600b08ab3c3f9a`

```dockerfile
```

-	Layers:
	-	`sha256:4ef69c676d4c058acb39036dea3642940a1d27d14c7c6f5083f475f89489e663`  
		Last Modified: Wed, 21 Oct 2026 01:17:02 GMT  
		Size: 7.4 MB (7440393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:545afdc60b2fa9d495e44b9ec27e542004cab81d142f98114b9bf7b28ffdb591`  
		Last Modified: Wed, 21 Oct 2026 01:17:01 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e93f80b4891d966c35b230aa806db9d596b3715af69b08d024a9bcd48a3e00a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236668586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb1dd31ac3c596393082a85750e6b160b8dd16449f89056cc9ece216522d4ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:21:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:17 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:21:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:21:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:22:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:22:28 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:22:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:22:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:22:30 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:22:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:22:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:22:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:22:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f40e050a2656716db8631750a15b498efa3fff5c3b02d7c78fc59fb897c53b3`  
		Last Modified: Wed, 21 Oct 2026 01:23:08 GMT  
		Size: 91.5 MB (91528875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a931170138712b4377492456d963d6cca3ae0d31ce817b5e5c41b39549555bd`  
		Last Modified: Wed, 21 Oct 2026 01:23:05 GMT  
		Size: 20.0 MB (19966819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:229fe8e299ddc263c443903b1fc926872682824164b8c8eb47bc03a31ed7a505`  
		Last Modified: Wed, 21 Oct 2026 01:23:04 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a418f5078df9ba4c5c5f65dc394f596f7a7ddc8a5ff8b44d7676a04b74af245d`  
		Last Modified: Wed, 21 Oct 2026 01:23:07 GMT  
		Size: 72.3 MB (72253518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539f9654eb9dfd5b99acbb9a2551b9f3885ac35327b6056e389e915ea52b188b`  
		Last Modified: Wed, 21 Oct 2026 01:23:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb6447d97a7a263a1c973dae8c0d2cff84c25dd27f1549776b82ed6e49874cc`  
		Last Modified: Wed, 21 Oct 2026 01:23:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:29895ae419eda3ecb61dc36e8c70ea9d67513399956885fe89a675d3ab528bc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7471228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:556cb207cb981a2ae4bf199454b1337f8574cc2bf014b14079780b138b74953e`

```dockerfile
```

-	Layers:
	-	`sha256:286966fa727bc8c5c63b6ed58c812dec736e850106286d387c7e6a2f1d600463`  
		Last Modified: Wed, 21 Oct 2026 01:23:04 GMT  
		Size: 7.4 MB (7446129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c053116659fc0051cc540ae47d15f50ddbc5e058bab630b8ba92ecb97b6333df`  
		Last Modified: Wed, 21 Oct 2026 01:23:04 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:b9464f5de389ab4b9be4f7bf2a9a7d0fa98c007fede5c52923bfd6b382f35bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248674994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:224dadcc2e32ccfe7a0248fbaa45fba1b74fca15b0c630836d8e3f441b62368f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:05:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:05:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:05:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:05:30 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 05:05:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 05:05:30 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:09:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 05:09:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 05:09:37 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 05:09:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 05:09:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:09:45 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:10:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:10:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:10:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 05:10:24 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 05:10:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1c5845314da8e226dc3a22aca7de15561d086b538c43c929f5ee27a4b09b48`  
		Last Modified: Sat, 17 Oct 2026 05:11:25 GMT  
		Size: 91.3 MB (91256239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92493b16a739a3f8efc06add5745576246ef27d42ca9d2d674ee3f6b2595d184`  
		Last Modified: Sat, 17 Oct 2026 05:11:22 GMT  
		Size: 22.8 MB (22830527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dcbd7d0b095b8d1be54a6f90eb7b68ce5738281004afad3c9868a22412dcb9`  
		Last Modified: Sat, 17 Oct 2026 05:11:21 GMT  
		Size: 4.5 MB (4515238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6eea98d4102e1aa26464446aa3ba5697f719f6984485c331b8ce7c68075271`  
		Last Modified: Sat, 17 Oct 2026 05:11:25 GMT  
		Size: 77.7 MB (77709178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb60e318fc44c89e943ebc92d5b1a4762ae47b909409c754f033fa1c3216564`  
		Last Modified: Sat, 17 Oct 2026 05:11:23 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c771c39070914d32e052c7c18bb6c7a85b79f0f2c1d8c8d7a9eb3e3e339328c0`  
		Last Modified: Sat, 17 Oct 2026 05:11:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:84639924e3a6104fedeef057a268b547d4de3ea95a56f55acc8c259fcc46a454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7455217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9e44dc0925540b7feb88658d0675d2814ac5f1de2fc02e1dc6cda1ace349d2`

```dockerfile
```

-	Layers:
	-	`sha256:d4837af64ed7364c035b3951bc4b11213e6bcff85205c3ddb3eca5cbdf679276`  
		Last Modified: Sat, 17 Oct 2026 05:11:22 GMT  
		Size: 7.4 MB (7430202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e0027b06edf8681f1ad1a044085bea16616b8cff5024a1803ba245a2851236f`  
		Last Modified: Sat, 17 Oct 2026 05:11:21 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
