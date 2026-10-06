## `clojure:latest`

```console
$ docker pull clojure@sha256:7fd67be8ddf4a520608c210297364cda702c532f842e9fa205e2495baef4b1b2
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
$ docker pull clojure@sha256:a0d9454e7409c0506fbd0a9e9f764b87f2b468494423b463b805606ec8be30f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248652263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f47b70213cbddb900e1ddb31a80c2fcbd5b62d54fd1d6cace3e691a51892402`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 09:38:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:38:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:38:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:38:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 09:38:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 09:38:28 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:42:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 09:42:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 09:42:47 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 09:42:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 09:42:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:42:53 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:43:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 09:43:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 09:43:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 09:43:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 09:43:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a37c650d1e52cd8f5083f2f8a779372810c6eb8695d47eccd9c3aad73441c9`  
		Last Modified: Tue, 06 Oct 2026 09:44:40 GMT  
		Size: 91.3 MB (91256289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e0bc8048d91ef5eff049446265086440215a4d02f24a6a0473fca9c22542a7`  
		Last Modified: Tue, 06 Oct 2026 09:44:37 GMT  
		Size: 22.8 MB (22831238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8841b1d84e180c4072c1c3f980a7d770929c668c3942ea55899f3ab8eebd8659`  
		Last Modified: Tue, 06 Oct 2026 09:44:36 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873d702a2356ab69dfeee842f537163a3e48bbf08f919a148b9a25901b4b2bfe`  
		Last Modified: Tue, 06 Oct 2026 09:44:39 GMT  
		Size: 77.7 MB (77685690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75531d06edee45af98730cb4cf3fa4f2916d96c60eb5c6dea0b196d7c322d4b`  
		Last Modified: Tue, 06 Oct 2026 09:44:37 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51c4d1b78af8fe853981d8fcf210394499461b9d10543bfe307f2bf34df992e`  
		Last Modified: Tue, 06 Oct 2026 09:44:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:674b21c8bc40cf7215d864b97c5778c30e16b11a690a30e99ef6b288d5655a52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7455217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93db9ccd1c6040982b7df2a8ab581faac60f4a33a676f98b0b8fbbd7ae3013b0`

```dockerfile
```

-	Layers:
	-	`sha256:61dea8807246066764d1b032c89cc980e46d894c829b63e432afbc39b6c81a7b`  
		Last Modified: Tue, 06 Oct 2026 09:44:36 GMT  
		Size: 7.4 MB (7430202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52317d721c4b450a2df5dfbcbc394861697f96fad437f1b26cc274988c333239`  
		Last Modified: Tue, 06 Oct 2026 09:44:35 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
