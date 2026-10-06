## `clojure:latest`

```console
$ docker pull clojure@sha256:3f3ff101fad0300eca95b1b9a363cecf9c66f4d3c83314e9cc0887568c3b7c55
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
$ docker pull clojure@sha256:4202f2e370f89128ef92a0ffea5c134f146b25ad38204304b01d8781742bc8ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.2 MB (240177016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07027e351281c3783f37f4c235e01b9f318b246d8d75e820f5b87c4231fc1570`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:09:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:09:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:09:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:09:53 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 02:09:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 02:09:53 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:11:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 02:11:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 02:11:15 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 02:11:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 02:11:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:11:17 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:11:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:11:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:11:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:11:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:11:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24516d0e9d98626f2f1e8c15127c5fd82f5274b3df3925a2002c30d0c201186c`  
		Last Modified: Tue, 06 Oct 2026 02:11:54 GMT  
		Size: 92.6 MB (92618071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a646f7283c3630ae1ffc044bbbb88f19b3f0aaf30dcaaf274517e0b5cf64fc4`  
		Last Modified: Tue, 06 Oct 2026 02:11:51 GMT  
		Size: 22.4 MB (22449221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395546a0aea03f42352cf8eba0f2da4f3af3b3bd0998cf8aa9f6c255d7c5dfed`  
		Last Modified: Tue, 06 Oct 2026 02:11:50 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5fa0b402a53971ee16e087e01607e1fb3b6b018645c20c1d7d18354699c447`  
		Last Modified: Tue, 06 Oct 2026 02:11:53 GMT  
		Size: 72.1 MB (72075413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1a772177f22f51c66e5c887d3eb3d7833f88a1f01e7515a1de6551caae253c`  
		Last Modified: Tue, 06 Oct 2026 02:11:51 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4978e9b0e6ed8050445e88f675a8aff34509695ae7120aae04f801e62339d7e`  
		Last Modified: Tue, 06 Oct 2026 02:11:53 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:9903b926697f9825e9cf558695a33bf925e6c59ec1363afe054d1e6fc13d6a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcfa799d4cde096ef9acff34f874452e569eecade24801a9f20d38581ec4d933`

```dockerfile
```

-	Layers:
	-	`sha256:36667758b2bda220901138cefbf63ba590fd11c5d6d46c0e9d1fbf8b3ffe0bba`  
		Last Modified: Tue, 06 Oct 2026 02:11:50 GMT  
		Size: 7.4 MB (7441688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd4747b9842321f8ab8866e9fce9ef30c8502a5a7c34bbdaa51aa2715dfb7831`  
		Last Modified: Tue, 06 Oct 2026 02:11:49 GMT  
		Size: 25.0 KB (24974 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6971290bb1646faffc7c0c8bed8a3c54a9484d9f83ffed49d0bae68b46804718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238916354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2281c45d8f85499ac7177550caab8038757d625412f7cbdd75f4e627200a7d8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 03:52:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 03:52:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 03:52:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 03:52:17 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 03:52:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 03:52:17 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 03:53:29 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 03:53:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 03:53:29 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 03:53:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 03:53:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 03:53:30 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 03:53:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 03:53:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 03:53:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 03:53:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 03:53:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7204a8a54098170588fbf57bec8b7a70ddc3bb02a87b9162ab936e2776b92e23`  
		Last Modified: Tue, 06 Oct 2026 03:54:05 GMT  
		Size: 91.5 MB (91528844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dea794477d9600fa766c5daad25411c8ec5e066ead23b3b52b1d140f11c3f9b5`  
		Last Modified: Tue, 06 Oct 2026 03:54:03 GMT  
		Size: 22.2 MB (22230128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca461abc87894fd7d5700c8b4a9ac4b09bdcc907d0cb5dc977f5fa181100303`  
		Last Modified: Tue, 06 Oct 2026 03:54:02 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c1e283b354483c0cc5a958eb8e02759eb2751b764ca7ec9acb89c53204c721`  
		Last Modified: Tue, 06 Oct 2026 03:54:05 GMT  
		Size: 72.2 MB (72239569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef2723221b78ca207d995e678c0c5831489799b9cb2a7da32e66c648c84244b`  
		Last Modified: Tue, 06 Oct 2026 03:54:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6598a6fa391134179487e87204593ae575eca4757f5b1d4fa7da48e8d8edb60`  
		Last Modified: Tue, 06 Oct 2026 03:54:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:a8f31cea4610b16fe9e79af1649dd7479e30bb50b94f11aab1e5e3d0d12f6b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7472522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b430a78bcd98206aaff3be97b41e71f783fb5ec689e88bc47bba4fae0f58000`

```dockerfile
```

-	Layers:
	-	`sha256:8d4c8475118f84da806a5024ac776d9c353b93fe39529e46bcd2381ff065904d`  
		Last Modified: Tue, 06 Oct 2026 03:54:03 GMT  
		Size: 7.4 MB (7447424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d45bf886ab2d34d75a151f2eaa6a7ceca7ee84b9e84d4c736bbf5b04d117bca8`  
		Last Modified: Tue, 06 Oct 2026 03:54:02 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:4cd52d68b582fde6bb097d146948738828481a209f2bb2962289e7bb65ed68a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246154012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b95212de8d7538247458d956f7805dbd2e8a3bba60b3198ed7f2a6dd12d4595`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:39:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:39:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:39:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:39:05 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 03:39:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 03:39:06 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:41:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 03:41:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 03:41:45 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 03:41:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 03:41:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:41:52 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:42:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 03:42:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 03:42:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 03:42:27 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 03:42:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da04e914040a479971a3ed1caeca790017eb916416f5fcef351c9f764d805fc2`  
		Last Modified: Sat, 26 Sep 2026 03:43:15 GMT  
		Size: 91.3 MB (91256264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae09b42099793a3143d008e2fd40ddbf3493455397fe3ac79ca5e3cfa9a6e6e4`  
		Last Modified: Sat, 26 Sep 2026 03:43:13 GMT  
		Size: 20.4 MB (20358351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99d9376f75067724316363794bc1da03e8a75f4ced42d57442896eb0a7b6555`  
		Last Modified: Sat, 26 Sep 2026 03:43:11 GMT  
		Size: 4.5 MB (4515236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a65dba9ec36b460f43d3587b1a6e2fc9489667e5cd4a500f04a7babe6b9786`  
		Last Modified: Sat, 26 Sep 2026 03:43:15 GMT  
		Size: 77.7 MB (77673780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321f31e1ea7811a48c2f938b21921acd154dda2a33006323d7a41a2293f973e8`  
		Last Modified: Sat, 26 Sep 2026 03:43:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c8c3718f69cea3bbe3d8159da8470030767c9cd75767eccd1233389ece4c49`  
		Last Modified: Sat, 26 Sep 2026 03:43:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:891ddc1a967a0c27fc13bfd61a6891c75da41042f71176d6941886d97b61d793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7455217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192007251194608ec189d7a089fc79936558f280ffef865100b3e179b48fb594`

```dockerfile
```

-	Layers:
	-	`sha256:fef5aa5eadc9b7cdd46d7da3661ce4051511c260ec60912ad893371645c6abcd`  
		Last Modified: Fri, 02 Oct 2026 07:33:11 GMT  
		Size: 7.4 MB (7430202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:783f6f5ef74aaafcc89659fa3cebb5acbbe486468e804f237b4c722ba29df594`  
		Last Modified: Fri, 02 Oct 2026 07:33:10 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
