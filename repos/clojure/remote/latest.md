## `clojure:latest`

```console
$ docker pull clojure@sha256:489950c93067f1c54e192942b9b11c28ed19e8c4d4d7593631e06013653a9a75
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:98ee8ec02324af66e8697de51dc9bff24afe1d5fe424ed717af260962984ba00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233923118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a051b70bb5a94241075f7a407c402133a488aabc09c3ac46ec43aaa9d9936871`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:17:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:17:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:17:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:17:16 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:17:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:17:16 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:18:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:18:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:18:30 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:18:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:18:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:18:32 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:18:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:18:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:18:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:18:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:18:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff8e4f71ec1381b467aa225cef239ece8234d7c53739ee688459569a7eb774a`  
		Last Modified: Wed, 05 Aug 2026 01:19:09 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1472b13f6e1e81071265681207957af37171f7d444fbee5570a41aa9c5f9302b`  
		Last Modified: Wed, 05 Aug 2026 01:19:06 GMT  
		Size: 20.1 MB (20117600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e948fbf7f2d856f75998ef3bdc551c3c840867caca37dddff7085ca34606cd01`  
		Last Modified: Wed, 05 Aug 2026 01:19:05 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20132e65e4fe3854cd1efdb0161a5c344f7dc9643c2536ba36300469c21dae6`  
		Last Modified: Wed, 05 Aug 2026 01:19:09 GMT  
		Size: 68.2 MB (68217576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a2e04700d4b73fb9621c35d4fb893d1a00135324a809d6e6998cadbb93cb99`  
		Last Modified: Wed, 05 Aug 2026 01:19:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac47be39ff40b5fab6db36fe4ac1dc45f1c79b7793964ccfa69dc0593b0ba1c9`  
		Last Modified: Wed, 05 Aug 2026 01:19:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:bcb2b3584c50d3e794327ba76c1aa906bb955707503c39d46fcf9898d807a62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3815a3897e57a58ab8e2ddd918636c4d065165b05249bc02cc8e68a5b60fb78a`

```dockerfile
```

-	Layers:
	-	`sha256:200d9e1ad55bdefdf1ded9bf553709eaa98ffb9a99510ce4f12aa78f72bcb35c`  
		Last Modified: Wed, 05 Aug 2026 01:19:06 GMT  
		Size: 7.4 MB (7435947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eeff35b02ddf973f8ff88747257edebf55bee447b378987cc9c336504b73c81`  
		Last Modified: Wed, 05 Aug 2026 01:19:05 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7cdfc3ee0e0746b06539597f84698839a6f7f1c8232e367d20a63803fc5fb5c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232751513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3012cbfedbc8b4d4364c805d482f63535e2852fe4f93dbb03e5235efcac1ad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:22:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:22:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:22:58 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:24:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:24:09 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:24:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:24:10 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:24:10 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:24:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:24:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:24:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:24:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5937ce5cf8f7bddbac68b956a943581706f7ba02b100be8374b2c63ef129acd8`  
		Last Modified: Wed, 05 Aug 2026 01:24:49 GMT  
		Size: 91.5 MB (91542246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e9112c2cc4093e97b9f4d09a0a920e318d10e067193878cfb53c8494be1594`  
		Last Modified: Wed, 05 Aug 2026 01:24:47 GMT  
		Size: 19.9 MB (19940694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4182da21a371783668958917c14f93e5707fc2cb9e1e316ae91ce9d4b0fd9e82`  
		Last Modified: Wed, 05 Aug 2026 01:24:46 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b8412ce45094e99a2ac8d03d5119066707325fd25a2dd28402a2dabe20f67ae`  
		Last Modified: Wed, 05 Aug 2026 01:24:49 GMT  
		Size: 68.4 MB (68368935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd4504cda149ba7128a5342c7a2351ac385c49b60251d1826a4a3e96c63ea31`  
		Last Modified: Wed, 05 Aug 2026 01:24:48 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b293ae67fb04990dad3aeadf38a4f072411f7fdb0e0dd3e64aa9150e2ffd6e13`  
		Last Modified: Wed, 05 Aug 2026 01:24:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:1a17cf4869d3f97ff82a7079c26408b131f7cc4fd024e086c3751c140c7e5139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c7bf9bed93ef52d5fe32f341358608233c07416c2d6c705d4c1199ca4690627`

```dockerfile
```

-	Layers:
	-	`sha256:a2fc8d2e45d34e8e4e328c09bb377af6197e9d571335b371567bfcea77e77ce9`  
		Last Modified: Wed, 05 Aug 2026 01:24:47 GMT  
		Size: 7.4 MB (7441683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f71d77fd6081c05cac6aec5b9d640a8be81f4145f1a72911e62bb509e9a9de4`  
		Last Modified: Wed, 05 Aug 2026 01:24:46 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:60603b115513eaa91166cfc280d6fb776503feed06b05676759b2c6b7eab27ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242922396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce4e791ed0a470ace54ec48f082db42b5e92835f3f0d4150b13d3ca6009bdb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:20:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:20:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:20:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:20:27 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:20:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:20:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:22:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:22:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:22:55 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:22:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:22:59 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:22:59 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:23:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:23:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:23:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:23:30 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:23:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49264167cb87dad9e24e124b14d9805f39b865f49947d09178cf7347263f11e`  
		Last Modified: Wed, 05 Aug 2026 03:24:12 GMT  
		Size: 91.9 MB (91914039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2137fe339e3d820beb25b26491f168582456f46e15a40822120b5bc5baadd69`  
		Last Modified: Wed, 05 Aug 2026 03:24:10 GMT  
		Size: 20.3 MB (20331994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62254149ab073c628414f91c54ce94fabb2295756fa4731cb8abc484a31503b`  
		Last Modified: Wed, 05 Aug 2026 03:24:09 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8fb2c53dad436e1c3dcf503982daaaca550ceb668d2d1d13519e96aa9a64b1c`  
		Last Modified: Wed, 05 Aug 2026 03:24:12 GMT  
		Size: 73.8 MB (73818594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21edde1fad1a362131e8b809859185837744110c550e595c149fa4dc129b4cd6`  
		Last Modified: Wed, 05 Aug 2026 03:24:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ffeba33cba22955f3e4e8c0d35b4427ccc3669a92a8aa65536623a9d4a6830`  
		Last Modified: Wed, 05 Aug 2026 03:24:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:343b9bbebc83ef200ed768bfa5a7c96fbc5d5a7485f5263c68dfed53f7bd5896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:812462a26e96912dc71cd317ef6f259ba6040e679d0fe67540840615679f8e32`

```dockerfile
```

-	Layers:
	-	`sha256:6528ad9aba5ed1c8db0430f781eff2ab4c8bb3e7a3d235c351bccde8decf7fa0`  
		Last Modified: Wed, 05 Aug 2026 03:24:09 GMT  
		Size: 7.4 MB (7424463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f4b97055bddde069e19c6efe776e4bd18a7f3a6ba9030451056537649af32ca`  
		Last Modified: Wed, 05 Aug 2026 03:24:08 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; s390x

```console
$ docker pull clojure@sha256:7f1f3854508cc39a55d4f1a714c6fee9ed93f9509be7dc09ff8cb8ebcd3e029c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227212703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03b09c3aad5cf5d79ed75b45d17481a4220d6ae2e87ad05e6fd97af4c73dd48`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:47:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:07 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:26 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:48:29 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:48:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:48:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:48:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:48:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7a0cad5f0aac8adc2e030a150bc1d40f4c14ef4024c1a7c7db6e4dcf13475c`  
		Last Modified: Tue, 04 Aug 2026 02:49:11 GMT  
		Size: 88.4 MB (88420383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f653c08d1f121e25934a6cd35fbd3c1565dc6048609c5d85c97a511610dc4fcd`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 19.8 MB (19770403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2ce953b25928ff4efc001284416f5bb7c5c4cb790449606e1b1ea86239b21f`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a98249af6d751aa9b4f40af8dfd27a5c27c8eba5f359b7593ebe4efea4cefa5`  
		Last Modified: Tue, 04 Aug 2026 02:49:11 GMT  
		Size: 67.3 MB (67348342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b112d49c049852f18ec6c1f003ad416ccd71e27f1d56b8cd751265f9f0a575a8`  
		Last Modified: Tue, 04 Aug 2026 02:49:10 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425bfac99dca23d8cd84057e2e2a6283e1135d674bdf8236c932fdc6e1d52da7`  
		Last Modified: Tue, 04 Aug 2026 02:49:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:fe012b44458cdffb9afd55904e2be9f684247abfa8af72038fa774b9b370490f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7436802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55284b4fa93bab8f7e32fb2e23decc03b3611b191b2e0827f708978fb2f5ead`

```dockerfile
```

-	Layers:
	-	`sha256:b6617046fd05bd224c1116b527da4861cac7dabc52b838a37cbe2e8c2fea30d9`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 7.4 MB (7411828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dec46939a32dfd9e4e272f21c699b6bd7da8046b9cde8de6b01418aa85e7dd62`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 25.0 KB (24974 bytes)  
		MIME: application/vnd.in-toto+json
