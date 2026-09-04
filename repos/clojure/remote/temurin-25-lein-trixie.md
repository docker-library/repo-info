## `clojure:temurin-25-lein-trixie`

```console
$ docker pull clojure@sha256:4af78ab7865e9c2d914e68f262d9be45e5b91e2c5fafc86ec4f8588d489f2dac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:dbaeeaf91cf6676fdb40d9e0c4e1bbe246d90016126a0d7a45d67c361e8a68db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165349040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37fc618bc58b69d1b8b6c792de60f1042f1a9bd9d6d119d1c3e2c0e1df5b10cf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:30:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:30:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:30:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:30:56 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:30:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:30:56 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:32:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:32:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:32:07 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:32:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:32:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:32:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:32:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a649e7712a5c952b8fdeb654531128ba148b8a416ef77ae42408649a35149a12`  
		Last Modified: Tue, 25 Aug 2026 01:32:27 GMT  
		Size: 92.6 MB (92615082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e770d38612dc4863e3bcf041b07dcb61c9e7d6dc596d8cf732c4199418d50f3f`  
		Last Modified: Tue, 25 Aug 2026 01:32:25 GMT  
		Size: 18.9 MB (18880494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4779e16be8f4a30e58127a86ebc472cfdc90e87c7ce145852b13b017eee151`  
		Last Modified: Tue, 25 Aug 2026 01:32:25 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c7e875bc86a8f2d9f1b7188a79531eda4d8dda0db62137f6c005ec5d6b21c9`  
		Last Modified: Tue, 25 Aug 2026 01:32:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:30572c4a0e895d46a691b4028bd6e82fceb055f2f10c690e5a55b1b43aaae77d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6acd1cc5b24db597b82e20772720b80bbb37ceaee5b0c8c5012681d4c83f8a4`

```dockerfile
```

-	Layers:
	-	`sha256:d165175e119cdfa5eab9f31b6f67a407bfcfff5b42c8a0a092bb152583dcbe7f`  
		Last Modified: Tue, 25 Aug 2026 01:32:25 GMT  
		Size: 3.8 MB (3790862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4be6f777f8415fd87857ecf6f4cc83a3e34fa6f2b1a0c2b57d5e84cfe22ab4d6`  
		Last Modified: Tue, 25 Aug 2026 01:32:24 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5b087d721de19b5319c6537524c56fac35211e3956568dc2e6ac9a199a54df13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164592312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0f7bf715a7f28abf73adc6432651cf1ac336caa31aab77c8d3ee90db061d4a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:35:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:35:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:35:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:35:27 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:35:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:35:27 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:36:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:36:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:36:44 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:36:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:36:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:36:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:36:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47599c42e2f441976f7ce354e9531c8dc120cb3f4d024654237e7ae82ecc0323`  
		Last Modified: Tue, 25 Aug 2026 01:37:06 GMT  
		Size: 91.5 MB (91532219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df85fdade1844314e2701cafe4f4ab61c92eb9646bc95c7c7161b73618a35259`  
		Last Modified: Tue, 25 Aug 2026 01:37:04 GMT  
		Size: 18.8 MB (18839596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b857b6b01203a28ea888bbd6cba831ecc4c57012052e241f814e4fb6f05d15`  
		Last Modified: Tue, 25 Aug 2026 01:37:03 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05d1ca7ad72a2eca3aea484e8707be5c88ddbe3a8210e847f997669652f1e8d`  
		Last Modified: Tue, 25 Aug 2026 01:37:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:eef603869a67daa886aec1722ab24fda55dd1cdbaaf5e8ae82949245d5d87760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d1faf0cd2e3a41972bafe8f34450303cc909bb70eaaefeedfb0d8f9847546f`

```dockerfile
```

-	Layers:
	-	`sha256:764d0dec8ad6bcb44b6e4d944c2a5431855facfc6a7fc498c957206c9982e3e2`  
		Last Modified: Tue, 25 Aug 2026 01:37:03 GMT  
		Size: 3.8 MB (3791123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:614eeeceb0e671889827b31c41257b97419346a03505a367519c8cdec9659937`  
		Last Modified: Tue, 25 Aug 2026 01:37:03 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ef0c5a7d555c2f738e76d4195178393744ad7902434aa91382890b3f652e43c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167872255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe418bd762a1393aa286e243c4e8d692cc274e12c986714c2a65df589512ddf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:43:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:43:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:43:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:43:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:43:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:43:09 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:46:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:46:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:46:24 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:46:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:46:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:46:28 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:46:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756c47952e9c84154196b3b91fa8d27b75a4d3b7df506babdaac766bbcb38835`  
		Last Modified: Tue, 25 Aug 2026 08:47:07 GMT  
		Size: 91.3 MB (91255804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fafc63f409cd25cd72550fefd13783ff0458a6835bf06f5d32f0a020dd02d243`  
		Last Modified: Tue, 25 Aug 2026 08:47:05 GMT  
		Size: 18.9 MB (18936518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb8e31b669ab7576a9031daac1eb932383c8199eaf77274bb647565a197a3fd`  
		Last Modified: Tue, 25 Aug 2026 08:47:05 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1246c4152ae70fab025282c1911be0478139f4abd3469f76a8275e99e4b70a`  
		Last Modified: Tue, 25 Aug 2026 08:47:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3a710aac096916ef80cec8c40367a2031fc9632058cdd51746fc9656a308586d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3793587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd87a61ee72d701abad9c64474c8a40ca333ca116599fa48c09495487b06c2eb`

```dockerfile
```

-	Layers:
	-	`sha256:1a96ffad4bf26250201cdb4b0611f423fd2723839a4a98fd32876c54114b8da0`  
		Last Modified: Tue, 25 Aug 2026 08:47:05 GMT  
		Size: 3.8 MB (3775186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e25dce3e9a6ac2ed51056028da9615ea6ecc2d53366325160bb4a806de3fd7c`  
		Last Modified: Tue, 25 Aug 2026 08:47:04 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json
