## `clojure:latest`

```console
$ docker pull clojure@sha256:aa9251b1ada52473c109f29c662c94bc2043f4e150efd32423dff722e9bf8160
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
$ docker pull clojure@sha256:c124afd5d993dfab1e0a3d14a1b82614acae43160aae7c9e93dc5b431fe09a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.2 MB (240167206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f63caa858608ab49dd436cd32d274a716d53b39711c2bd4962884732ce5c6f5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:46:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:04 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:46:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:46:04 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:47:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:47:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:47:30 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:47:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:47:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:47:32 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:47:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:47:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:47:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:47:46 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:47:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8639d00ff7dd97bb7fc09986ffa2b024fb897b09e24e2f9e2b8dca724d8843`  
		Last Modified: Sat, 17 Oct 2026 01:48:12 GMT  
		Size: 92.6 MB (92618011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46eb0ed15be684d780acbe4a08cf861f66d67cab2c7b15483edb0c21440f750`  
		Last Modified: Sat, 17 Oct 2026 01:48:09 GMT  
		Size: 22.4 MB (22437248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087c1dd2c24c028130f2c946d8cd89b9e46e1fbfa07df544f047677971b2f511`  
		Last Modified: Sat, 17 Oct 2026 01:48:08 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a8fe91db87f19ba6f6f1dc47bcd6d4861aaa2d6041b2719d850147038d4baf`  
		Last Modified: Sat, 17 Oct 2026 01:48:11 GMT  
		Size: 72.1 MB (72077659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df4b6d639b01a1d42162219e7b359563ba27368156a19ef02e53b3983921305`  
		Last Modified: Sat, 17 Oct 2026 01:48:09 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00680c6d5d1ade53c9844a86e229151cfd83595cd0f0ddc66efa02a3b89b70ce`  
		Last Modified: Sat, 17 Oct 2026 01:48:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:584d3ef05f757680d3558e3807c996f4422f352a28e25df58ba848d858e06ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbf7ffff0445b6c16dc4280533fc03a119d1489ee9296273ce4b25019d9ede4`

```dockerfile
```

-	Layers:
	-	`sha256:ed98ab19c5239d00a92722faea3c76ab0b913225638664d0721f31a06d556e71`  
		Last Modified: Sat, 17 Oct 2026 01:48:08 GMT  
		Size: 7.4 MB (7441688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b6191b3aa93c40f2ec496b78e98f10e774826e8793da29ac6a7fedf2bc442f`  
		Last Modified: Sat, 17 Oct 2026 01:48:07 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c6c8a0fbc631273e06c63bb84385e92c38100fe712dfbff925ea21578c16dd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238930039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c5f6905bb7b733e1123ec8cb5ddef1800f0c0b8c97a543dd43cf3a2375c161`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:46:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:20 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:46:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:46:20 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:47:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:47:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:47:39 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:47:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:47:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:47:41 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:47:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:47:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:47:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:47:54 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:47:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6ca56f03c8a515a6d25224b097e8175ec599de91c0c384daa366cd874a6993`  
		Last Modified: Sat, 17 Oct 2026 01:48:18 GMT  
		Size: 91.5 MB (91528870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968dcfd3cc2ab4e28cc3c796376a6436777ba287843c9bea273d359052f399bc`  
		Last Modified: Sat, 17 Oct 2026 01:48:16 GMT  
		Size: 22.2 MB (22230127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10acea641cb71baac305123f41b1d2205e2f8a704e42c74bd0318b0d393f538c`  
		Last Modified: Sat, 17 Oct 2026 01:48:15 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723df995820f71db9db2cc4652b20dd5efa7f62c65e3a2b2e7b1c8fcb002aa42`  
		Last Modified: Sat, 17 Oct 2026 01:48:18 GMT  
		Size: 72.3 MB (72253204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064dce089fa963bbf3d28f6b8fb034490d71c446d27460b6848ed2e285b98141`  
		Last Modified: Sat, 17 Oct 2026 01:48:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281347dc23730c916343e0bc21fa2a38dff2e0c063dacf5e63a5ed2e4d70e6d2`  
		Last Modified: Sat, 17 Oct 2026 01:48:17 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:7b1f151b95eae6979fb30d630894dfce4bee9e4ffe80425d131d37131cfac34e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7472523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384012620f6c2512ec02b85d8130d099a46297fd9de445a3a1f527c9682b519f`

```dockerfile
```

-	Layers:
	-	`sha256:e9c847bb4ab4bc2443f288711ee03e6075a5dd223225d7fc73cd4046a802f645`  
		Last Modified: Sat, 17 Oct 2026 01:48:15 GMT  
		Size: 7.4 MB (7447424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49b4f358f6943c96ea6a79052785bdbe170ea14b55eab6ec6218b77fdd4663ec`  
		Last Modified: Sat, 17 Oct 2026 01:48:14 GMT  
		Size: 25.1 KB (25099 bytes)  
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
