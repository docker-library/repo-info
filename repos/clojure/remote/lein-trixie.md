## `clojure:lein-trixie`

```console
$ docker pull clojure@sha256:ca9eeb219d2a9c98197730492ed9c0297db4083e21f072b5e7e4d9a881c2dcb0
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

### `clojure:lein-trixie` - linux; amd64

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

### `clojure:lein-trixie` - unknown; unknown

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

### `clojure:lein-trixie` - linux; arm64 variant v8

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

### `clojure:lein-trixie` - unknown; unknown

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

### `clojure:lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:4dcee0fc2eb70f01efd39e27c7275f805b7a2a8e554802b11a3b093a34dc649a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167841772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b5b188b5bd278fadff48095c395542c2a36feac2ced978af76ad8ea8e8b8f6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 23:01:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 23:01:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 23:01:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:01:21 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 23:01:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 23:01:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 23:04:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 23:04:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 23:04:37 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 23:04:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 23:04:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 23:04:40 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 23:04:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1861b8c1201eea487929ad0d0388eb3f0928087bc066346e43a0a6fa142eba`  
		Last Modified: Fri, 21 Aug 2026 23:05:17 GMT  
		Size: 91.3 MB (91255844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12cda7575985b54bd471e84c7cfd7c994708ffbe7c917503814148250ddaff6`  
		Last Modified: Fri, 21 Aug 2026 23:05:15 GMT  
		Size: 18.9 MB (18936667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a02177f973e873c2ad80e2d6f2ca853a7ec478eb4fe528f80da210e7fb0ec2ec`  
		Last Modified: Fri, 21 Aug 2026 23:05:14 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd45ecffd88831df1bab35693b9b53b52cfbee15853efe237d0e896d888929f`  
		Last Modified: Fri, 21 Aug 2026 23:05:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e76a146707ba908d0af682adecba9eb181c21a2db5d4393eed1b8475c96edbe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3788609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef3957374f49ef8d72113e89a862fb67a821f1d55afff6f086878763ca1278d4`

```dockerfile
```

-	Layers:
	-	`sha256:ff7f6a4207d8a6e18d8e294287788aa4c8059a0967f2c8e98af62b18c6ab576c`  
		Last Modified: Fri, 21 Aug 2026 23:05:14 GMT  
		Size: 3.8 MB (3770208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d40abd4d58ddd604b6bde53df28e4e864a4b12e0dfbc9ff8bfa780936716b13`  
		Last Modified: Fri, 21 Aug 2026 23:05:14 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:df68dc4bf97f3b99d55de2c3b27b0602eece7547893d8c572144cbad5cb8e3f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161266272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2cac554114c24a4db72827207b77bcd7011132990a5a44ae6cd062e8b14dd28`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:09:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:09:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:09:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:09:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:09:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:09:42 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:11:00 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:11:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:11:00 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:11:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:11:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:11:03 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:11:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676f96e1bf8f0d74ff9a194b7fdcbc50a24e5d806c1305acc7787c1d56eeb157`  
		Last Modified: Tue, 25 Aug 2026 02:11:24 GMT  
		Size: 88.4 MB (88421937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4055a2aa0324dbd18a261264d82fe9dcefb0b57914e2afef12d730bf99b2a4c8`  
		Last Modified: Tue, 25 Aug 2026 02:11:27 GMT  
		Size: 18.9 MB (18921989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0267600339ce07881b251eb02d29fbbed113ee89ff49c39897728a112b7d1396`  
		Last Modified: Tue, 25 Aug 2026 02:11:26 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682ac07f2f21cc76c7729469a4409b0fd92d2738fd60a5edddeb9fea8b433f90`  
		Last Modified: Tue, 25 Aug 2026 02:11:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6dd6805e387a5bd845f063c91dace0b11547f31ea25da71db999f7df84086c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3790195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c7fa74d4bd87d1162625079249d0256e0c3ec98dd12f49c5bfecf66e19268`

```dockerfile
```

-	Layers:
	-	`sha256:5dbffac98f5e143b0529227dfa670e6311ab762ed0d6d7f75d2dba761ab7d590`  
		Last Modified: Tue, 25 Aug 2026 02:11:26 GMT  
		Size: 3.8 MB (3771851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34e9035290f64b346d46a49bd2ad2936cfc203e997bc45954d874b61db98c9d4`  
		Last Modified: Tue, 25 Aug 2026 02:11:26 GMT  
		Size: 18.3 KB (18344 bytes)  
		MIME: application/vnd.in-toto+json
