<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.20`](#logstash81920)
-	[`logstash:9.4.5`](#logstash945)
-	[`logstash:9.5.1`](#logstash951)

## `logstash:8.19.20`

```console
$ docker pull logstash@sha256:d94c84fabf2e059318f2ff629f1b967d1a4c8bb7aa44a449bf7f621b554d794c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.20` - linux; amd64

```console
$ docker pull logstash@sha256:9d631c69bac252c1bdd0f15a459ad76b964949ccf724f4f72a0d864f3a93a7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.8 MB (530754427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef62aa95627cfe0debbabef0988c21c258fc9c8116898a03b3d4bddba6a5168`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Wed, 12 Aug 2026 17:38:28 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 12 Aug 2026 17:38:28 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.20-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.20 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
WORKDIR /usr/share/logstash
# Wed, 12 Aug 2026 17:39:14 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:39:14 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:39:14 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 12 Aug 2026 17:39:14 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
USER 1000
# Wed, 12 Aug 2026 17:39:14 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 12 Aug 2026 17:39:14 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.20 org.opencontainers.image.version=8.19.20 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-04T18:03:38+00:00 org.opencontainers.image.created=2026-08-04T18:03:38+00:00
# Wed, 12 Aug 2026 17:39:14 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72349d5ba110eb0cd0d65704c8baf75cfc7b7a73ff63c862172e0e5aa6471a0b`  
		Last Modified: Wed, 12 Aug 2026 17:39:50 GMT  
		Size: 49.7 MB (49700613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a6a13fa3c84bdeaed11cd133e15b88a129ce0045bad6fdd0ef3cb530ade545`  
		Last Modified: Wed, 12 Aug 2026 17:39:48 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f238178ae04dec67df839f5ed28eebd27c1d911a48e2680daf53ad5a072a1ce`  
		Last Modified: Wed, 12 Aug 2026 17:39:58 GMT  
		Size: 451.0 MB (451034966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d6eafdf69c82a41e256f7bdf6552e1d67fd8aeec9f61a274ae05751f51177d`  
		Last Modified: Wed, 12 Aug 2026 17:39:48 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af1cbead8ab2b040e5dac2a4756f49715f110b8d5cdb3b1e5ca25bcf31a2217`  
		Last Modified: Wed, 12 Aug 2026 17:39:49 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd68e70385d2a20d885149eb71da2929ade0674bf88d48be5bfebdff88df0a16`  
		Last Modified: Wed, 12 Aug 2026 17:39:49 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aead8a75c4904a40567fca1c3965bec474d7a155a12e31da2bf2d4812cd380`  
		Last Modified: Wed, 12 Aug 2026 17:39:50 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:707db6637e04fc20a5d7ff87ca266be4cb6d5d4577cea29994e9a29c6835d5dd`  
		Last Modified: Wed, 12 Aug 2026 17:39:51 GMT  
		Size: 6.3 KB (6298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20dfb9dc04ff6a7d819086ad27bd5bad6ee4d4b3bc50f071327d6cd6ca7864a6`  
		Last Modified: Wed, 12 Aug 2026 17:39:52 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab8792778fbc5b1e4f680e058b35243bbddaa729df4e744de762818c94861e3`  
		Last Modified: Wed, 12 Aug 2026 17:39:52 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccbcb68ba39c2121271e7c9abae746ede87594aed98feddf5e3a41309d691de1`  
		Last Modified: Wed, 12 Aug 2026 17:39:52 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.20` - unknown; unknown

```console
$ docker pull logstash@sha256:b7fce733c42e511f5907aa252d856afc41e7c8e972ac2ff9a134a9e4d77ba791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3645531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2efd3cef02a64f295a219361e52ccb780e91f605490f044417d75c8d89ee14`

```dockerfile
```

-	Layers:
	-	`sha256:91d50fe986416283613c82bd7e0315b8de1126abab54f38c2486b2409ee9d809`  
		Last Modified: Wed, 12 Aug 2026 17:39:48 GMT  
		Size: 3.6 MB (3609686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f80b9b6dc78d0938dac1c08310c89b1fa2d6b5dc4610ef684510f624268d6d5`  
		Last Modified: Wed, 12 Aug 2026 17:39:48 GMT  
		Size: 35.8 KB (35845 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.20` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:89adb1b56d05e018ce60153931d2a7d9d03b7ce2264fa7c62adc22f224ac5486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **527.4 MB (527445672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770426f0ed16df2076f9eb80a097854377c6efc55b33ff6c35c30fdbab71db96`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Wed, 12 Aug 2026 17:37:41 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 12 Aug 2026 17:37:42 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 12 Aug 2026 17:38:18 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.20-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.20 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
WORKDIR /usr/share/logstash
# Wed, 12 Aug 2026 17:38:19 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:38:19 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:38:19 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 12 Aug 2026 17:38:19 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
USER 1000
# Wed, 12 Aug 2026 17:38:19 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 12 Aug 2026 17:38:19 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.20 org.opencontainers.image.version=8.19.20 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-04T18:03:38+00:00 org.opencontainers.image.created=2026-08-04T18:03:38+00:00
# Wed, 12 Aug 2026 17:38:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50caaa6097bdf6a2a5a1abfdeae6f1f9544977c9ffc49904b23ba23ef716a45b`  
		Last Modified: Wed, 12 Aug 2026 17:38:59 GMT  
		Size: 49.0 MB (48972535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffab640057ea70c6c038e0703dc91a6a8b2d143035a01e5d9252d1872da6882`  
		Last Modified: Wed, 12 Aug 2026 17:38:57 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c46592a69ed58ad5db790d42038f60d57213c86976de08fdedf2474e880af4b`  
		Last Modified: Wed, 12 Aug 2026 17:39:07 GMT  
		Size: 449.3 MB (449318583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff718f789534107a2fc0919704e8c7d50a3bbe267f4dd42566bf32903fbb4ef`  
		Last Modified: Wed, 12 Aug 2026 17:38:57 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714355398c4d985c64ae2c21b4e35a21acbb6d754403af607a8278c24699df68`  
		Last Modified: Wed, 12 Aug 2026 17:38:59 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e8276267b53ef4238ec5d66316157173521369389441d4dbf179d1a56e13cb`  
		Last Modified: Wed, 12 Aug 2026 17:38:59 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08a4604f27a46a56e5ea647373ba71ad1a382ad28255301d764bec651037258`  
		Last Modified: Wed, 12 Aug 2026 17:39:00 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d01d74865844bde9e8b7efc56ed556ac45d8919a066274c12d80e90903bb0c6`  
		Last Modified: Wed, 12 Aug 2026 17:39:00 GMT  
		Size: 6.3 KB (6292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee504a11e579eb83a5061e17ba173fdeb565f55434d7cf1947d1547e456fe219`  
		Last Modified: Wed, 12 Aug 2026 17:39:01 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4699a682e2d8c65b9e1161f1505465cc3e5d0b9033ee21cbd06f40c3c1317485`  
		Last Modified: Wed, 12 Aug 2026 17:39:01 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3e2b555940df17331ea36a349a6a467a57f36d61ee537da6821c7f9a1e0792`  
		Last Modified: Wed, 12 Aug 2026 17:39:01 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.20` - unknown; unknown

```console
$ docker pull logstash@sha256:c260edb3729b823da40d8034bb8334adadb0c7ff080f3e48d39379e0774f823c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3646084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61aa632d6173eae57b54c1ab8638cd9a9160d8630790eb1b4caba397f1ce662`

```dockerfile
```

-	Layers:
	-	`sha256:c0af657045d4643b2b4c63b7faaed0e4ab0ff60e21308c2f0c7b33e041f6d431`  
		Last Modified: Wed, 12 Aug 2026 17:38:58 GMT  
		Size: 3.6 MB (3610111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a867c95c391221fa43aa1f299fc9a35afa401cd15fce38266803e844f50722ed`  
		Last Modified: Wed, 12 Aug 2026 17:38:57 GMT  
		Size: 36.0 KB (35973 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.5`

```console
$ docker pull logstash@sha256:385082cdeaf1b9880e044b67abbfac49c1bc112207c4865bc549f1a4d362609d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.5` - linux; amd64

```console
$ docker pull logstash@sha256:a21cf34d4b162ed0e73f0892b7638a80182b501d2debca3f88421a64af9b78ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.5 MB (526513423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e535bd76e239d1f0869e877198e6ddc98d49018d79239a86f3677f4e6e584c74`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:56:02 GMT
ENV container oci
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:df00d2ddcafd5d3230e4389e976d7b8e34c276ca8e8d50edc2315b0141add52b in /      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:56:03 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:55:47Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:55:47Z" "architecture"="x86_64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:55:47Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Wed, 12 Aug 2026 17:38:20 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:38:20 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:38:20 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 12 Aug 2026 17:38:20 GMT
WORKDIR /usr/share
# Wed, 12 Aug 2026 17:38:22 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 12 Aug 2026 17:39:25 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 12 Aug 2026 17:39:25 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 12 Aug 2026 17:39:25 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 12 Aug 2026 17:39:25 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 12 Aug 2026 17:39:25 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 12 Aug 2026 17:39:25 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 12 Aug 2026 17:39:25 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 12 Aug 2026 17:39:25 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 17:39:25 GMT
WORKDIR /usr/share/logstash
# Wed, 12 Aug 2026 17:39:25 GMT
USER 1000
# Wed, 12 Aug 2026 17:39:25 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 12 Aug 2026 17:39:25 GMT
LABEL org.label-schema.build-date=2026-08-04T17:59:18+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-04T17:59:18+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 12 Aug 2026 17:39:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:2b8131e88da7bc7239bd3e4fd72821791bec3c3a93924daef20a3a2e88e4a3d3`  
		Last Modified: Mon, 10 Aug 2026 18:10:48 GMT  
		Size: 40.7 MB (40708738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b8b74c62224bcfb51123568bed4edcee73dcf743b303b68f54ab0e4c661ee2`  
		Last Modified: Wed, 12 Aug 2026 17:40:04 GMT  
		Size: 4.8 MB (4771568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b22d3eb0c99fc7fc82173871553093d7c18abf8eae28a0d69b98208f732de3`  
		Last Modified: Wed, 12 Aug 2026 17:40:13 GMT  
		Size: 480.8 MB (480768302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71888877001e8452c004d127fd2a8a3f6ce35dbe3338dbde7b4dec08e2825d9d`  
		Last Modified: Wed, 12 Aug 2026 17:40:04 GMT  
		Size: 6.4 KB (6368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d1791cb99265ea4cbc6d61e245feb5830de33a3e4c0af2cab5aa328c1f2c6a`  
		Last Modified: Wed, 12 Aug 2026 17:40:04 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c198f2a9db71b999b65d84d753fc8ddbff2d21e20b367039527be180f5b76fbe`  
		Last Modified: Wed, 12 Aug 2026 17:40:05 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1e7d1f022981d8f5ad6b3a0eac68a63f4ff26e1683e2b2ab685ebbb73356e3`  
		Last Modified: Wed, 12 Aug 2026 17:40:05 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f594cdda96157301d4117a84c6e3fa6552c64eb5bcd3eee3ffb1c3246098ab05`  
		Last Modified: Wed, 12 Aug 2026 17:40:05 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f305f2ae21ef9fa578decf09e29eb15a7324905d93051dadfd8d886b7c03be`  
		Last Modified: Wed, 12 Aug 2026 17:40:07 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:915147e3da1dc90e89f499e18421e1ed93e5d8f8b087706681f5faa4c74fb67e`  
		Last Modified: Wed, 12 Aug 2026 17:40:06 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.5` - unknown; unknown

```console
$ docker pull logstash@sha256:2c6b45128e41f23ad07388e8c749a07bbb9694262528136aabd6a2bc18581895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5070e12458e5538c64e4c90e27112394fb79256a6e9fe8119dce5a45d30568`

```dockerfile
```

-	Layers:
	-	`sha256:0ece92f6bc7f2aa596c6b655589d9ccbf3fa656e4a89c1adb68d4cbaa200f88a`  
		Last Modified: Wed, 12 Aug 2026 17:40:04 GMT  
		Size: 2.1 MB (2115557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f50c7283ed11d70162c7ffa03567db42e6b0fe30054f3c09c66c7d3fe871ba10`  
		Last Modified: Wed, 12 Aug 2026 17:40:04 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:9a8606a4a706ecc4d227bcb4b8c5b91a135285dbbbbeb663ef73d0d3a89dc4eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522851645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebac906639d312386a27a28e6fac7dd7231e8b4c88ba09b7d7e15527f8e4a60`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:58:36 GMT
ENV container oci
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:a29571d1d7f0219756ea4cbeea7cbd2d7c70f920d886563530efb6b5f51db754 in /      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:58:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /root/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:58:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:58:14Z" "architecture"="aarch64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:58:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Wed, 12 Aug 2026 17:38:42 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:38:42 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:38:42 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 12 Aug 2026 17:38:42 GMT
WORKDIR /usr/share
# Wed, 12 Aug 2026 17:38:45 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 12 Aug 2026 17:39:15 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 12 Aug 2026 17:39:16 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 12 Aug 2026 17:39:16 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 12 Aug 2026 17:39:16 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 12 Aug 2026 17:39:16 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 12 Aug 2026 17:39:16 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 12 Aug 2026 17:39:16 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 12 Aug 2026 17:39:16 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 17:39:16 GMT
WORKDIR /usr/share/logstash
# Wed, 12 Aug 2026 17:39:16 GMT
USER 1000
# Wed, 12 Aug 2026 17:39:16 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 12 Aug 2026 17:39:16 GMT
LABEL org.label-schema.build-date=2026-08-04T17:59:18+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-04T17:59:18+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 12 Aug 2026 17:39:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:e3f9ee4410f580b6aa25583df525121fb62e969983ca4535073d9018d260fec1`  
		Last Modified: Mon, 10 Aug 2026 18:10:53 GMT  
		Size: 38.8 MB (38791667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2576b8aee9a90431c456788153f656416577152fe6ab91ff3de07442d066e3f`  
		Last Modified: Wed, 12 Aug 2026 17:39:56 GMT  
		Size: 4.8 MB (4758265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bfcce4aaa2f766a9f42647079b17e3962c2ca5476bde04e09d77deb44f4de5`  
		Last Modified: Wed, 12 Aug 2026 17:40:04 GMT  
		Size: 479.0 MB (479036889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3974c2c94976faf044cba54dd34cfd1663410d505f01939596c7cfbdfb3a823`  
		Last Modified: Wed, 12 Aug 2026 17:39:56 GMT  
		Size: 6.4 KB (6370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba45f1457f6c1b97ec94d23cc05dec8cf32155ef1eeaa3fa94fedaa3555e04b`  
		Last Modified: Wed, 12 Aug 2026 17:39:56 GMT  
		Size: 255.2 KB (255188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39be4c849a77532f259db5dc74b6b7b34cbfddfb97207150622dcfa1ed60e02d`  
		Last Modified: Wed, 12 Aug 2026 17:39:57 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5072990877dec67dae586b04843f479a52f29e11a416a05478fa2903ded494d1`  
		Last Modified: Wed, 12 Aug 2026 17:39:57 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9ff81eb3c25f696a0823479632396d7eb0e7d2e9ec3d36c1b2ff3d03be00bc`  
		Last Modified: Wed, 12 Aug 2026 17:39:57 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5228c36acb075cf7198c134d5e4de611c97905f532481eb59da7766a946af53c`  
		Last Modified: Wed, 12 Aug 2026 17:39:58 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e4b58b00d7c07eca500abd5d8f2309bfff5cedcb390a8b489ae366422f3906`  
		Last Modified: Wed, 12 Aug 2026 17:39:58 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.5` - unknown; unknown

```console
$ docker pull logstash@sha256:5d4748db1a77ca1b1b7118cf84dbb82ad5477ea35fd52d2465a13ffb678a2a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:608904596ead794bc7c7896e3c6709422abe56df8e794ae968151c3a7f01ccc2`

```dockerfile
```

-	Layers:
	-	`sha256:c280604af18a2a85e74d905808be80fb49113356bbd978f78e7ff7ef2c0fb4c1`  
		Last Modified: Wed, 12 Aug 2026 17:39:56 GMT  
		Size: 2.1 MB (2114345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cceb2c0dc19f772b0e41fe33c98db526442fb76093669b932fcfe0d11fe5bea1`  
		Last Modified: Wed, 12 Aug 2026 17:39:55 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.1`

```console
$ docker pull logstash@sha256:2b873f6a4ac0d8dc1665d7d8708cfc2a200d2755c7cedcec0163c252b685d7dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.1` - linux; amd64

```console
$ docker pull logstash@sha256:068750708514339fbf61fac28619b070b5f0b67e10c7be58e2c3e7780dcbac02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.5 MB (535510748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8d4417c5f391466e2c4afb4471e54cdfaeb811c394c41c40a77f30c2aeb4d4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:56:02 GMT
ENV container oci
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:df00d2ddcafd5d3230e4389e976d7b8e34c276ca8e8d50edc2315b0141add52b in /      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:56:03 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:55:47Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:55:47Z" "architecture"="x86_64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:55:47Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Wed, 12 Aug 2026 17:38:20 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:38:20 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:38:20 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 12 Aug 2026 17:38:20 GMT
WORKDIR /usr/share
# Wed, 12 Aug 2026 17:38:22 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 12 Aug 2026 17:38:44 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.1-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.1 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 12 Aug 2026 17:38:44 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 12 Aug 2026 17:38:44 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 12 Aug 2026 17:38:44 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 12 Aug 2026 17:38:44 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 12 Aug 2026 17:38:44 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 12 Aug 2026 17:38:44 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 12 Aug 2026 17:38:44 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 17:38:45 GMT
WORKDIR /usr/share/logstash
# Wed, 12 Aug 2026 17:38:45 GMT
USER 1000
# Wed, 12 Aug 2026 17:38:45 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 12 Aug 2026 17:38:45 GMT
LABEL org.label-schema.build-date=2026-08-04T16:26:15+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.1 org.opencontainers.image.created=2026-08-04T16:26:15+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.1 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 12 Aug 2026 17:38:45 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:2b8131e88da7bc7239bd3e4fd72821791bec3c3a93924daef20a3a2e88e4a3d3`  
		Last Modified: Mon, 10 Aug 2026 18:10:48 GMT  
		Size: 40.7 MB (40708738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472b20364ce35589560f6b7c0dcf763abd6eddd7e1838e209f76c36cbdc0b34f`  
		Last Modified: Wed, 12 Aug 2026 17:39:23 GMT  
		Size: 4.8 MB (4771569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9914372f86ae9668495531b8d7ea867c62801ff74bdb47dbde0de21e05bb17de`  
		Last Modified: Wed, 12 Aug 2026 17:39:32 GMT  
		Size: 489.8 MB (489765466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c453346055c8d5a935d8dcf77d4e6c094bad6ae6fe4079bbe643a1c99cf4827`  
		Last Modified: Wed, 12 Aug 2026 17:39:23 GMT  
		Size: 6.5 KB (6540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05222c73634a2b05e90966d4a249014f89b40d2c32be81553bb59ed5aeee5044`  
		Last Modified: Wed, 12 Aug 2026 17:39:23 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d2e7dee3fab41a6b5eed595ab97694c12b9ea9b3d10d8adff3eb1e5fa9ce34`  
		Last Modified: Wed, 12 Aug 2026 17:39:25 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8f195bb9c73737023b317b665f1998e0f589197db61b59c450008adbc3d673`  
		Last Modified: Wed, 12 Aug 2026 17:39:25 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22d9b2e1bf308ee395fba1a141790297d7f8428cbf1a52b07b5c5b47941d2a4`  
		Last Modified: Wed, 12 Aug 2026 17:39:25 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f415153deef401e310eb32e86f34018476c0de7f281257be9d82a81971a89e32`  
		Last Modified: Wed, 12 Aug 2026 17:39:26 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d2c0232afacd78df2df5f5684ab4785405bd0c8a1b5836a7e5501118a7394d`  
		Last Modified: Wed, 12 Aug 2026 17:39:26 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.1` - unknown; unknown

```console
$ docker pull logstash@sha256:2b47b94d1a5698f447338b66591ba7c3ecffb16fb63236e8eb72f21c38b52c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f9fcaef50f593954dc487c77afb17e28f48ed788a05dfdda3411efe686a188`

```dockerfile
```

-	Layers:
	-	`sha256:74c5274e953fff34aeed8184a2f75b60d269abbc82704132266d409fa8dba491`  
		Last Modified: Wed, 12 Aug 2026 17:39:23 GMT  
		Size: 2.1 MB (2141785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ebaa226129115efbb92b56bbc71626aacd8adc402c519161b3207f398d6f42f`  
		Last Modified: Wed, 12 Aug 2026 17:39:23 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.1` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:70ef52b0674f409fc3daa312e1fcb153a86e13b78e0bc6447cc51a6fd96e045b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.8 MB (531845861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5d68a64585cd888f63f2c22b819666eb0c8aeef3389349c70a8dc1344610b7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:58:36 GMT
ENV container oci
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:a29571d1d7f0219756ea4cbeea7cbd2d7c70f920d886563530efb6b5f51db754 in /      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:58:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /root/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:58:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:58:14Z" "architecture"="aarch64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:58:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Wed, 12 Aug 2026 17:40:01 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:40:01 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:40:01 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 12 Aug 2026 17:40:01 GMT
WORKDIR /usr/share
# Wed, 12 Aug 2026 17:40:04 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 12 Aug 2026 17:40:35 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.1-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.1 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 12 Aug 2026 17:40:35 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 12 Aug 2026 17:40:35 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 12 Aug 2026 17:40:35 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 12 Aug 2026 17:40:35 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 12 Aug 2026 17:40:35 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 12 Aug 2026 17:40:35 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 12 Aug 2026 17:40:35 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 17:40:35 GMT
WORKDIR /usr/share/logstash
# Wed, 12 Aug 2026 17:40:35 GMT
USER 1000
# Wed, 12 Aug 2026 17:40:35 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 12 Aug 2026 17:40:35 GMT
LABEL org.label-schema.build-date=2026-08-04T16:26:15+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.1 org.opencontainers.image.created=2026-08-04T16:26:15+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.1 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 12 Aug 2026 17:40:35 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:e3f9ee4410f580b6aa25583df525121fb62e969983ca4535073d9018d260fec1`  
		Last Modified: Mon, 10 Aug 2026 18:10:53 GMT  
		Size: 38.8 MB (38791667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34a31dee031893971a8af8d2dc5f20c059ffdaa6c5803682d0dc53822db4658`  
		Last Modified: Wed, 12 Aug 2026 17:41:15 GMT  
		Size: 4.8 MB (4758250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5e79bae04609d118d5bb5def7b2cecdf22e84ce5d004807d90b12611ae0b0b`  
		Last Modified: Wed, 12 Aug 2026 17:41:24 GMT  
		Size: 488.0 MB (488030950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cad385175630a8b2d99ca89d7b165c322270874712b5c7e6f34ea62c114cd78`  
		Last Modified: Wed, 12 Aug 2026 17:41:15 GMT  
		Size: 6.5 KB (6539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:477fe4ffaa6a2cb9ba3ff986d7dffe70486235b2d242f063925e8fb79292056d`  
		Last Modified: Wed, 12 Aug 2026 17:41:15 GMT  
		Size: 255.2 KB (255189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9ca177fae45f6d3600c9a85272ee0f19b4e968e3deb5226a1fa779af7728fc`  
		Last Modified: Wed, 12 Aug 2026 17:41:17 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5baa09549c34aec83cc48326c76495e67f6928b40a0c97cf65a4483245ede4e`  
		Last Modified: Wed, 12 Aug 2026 17:41:16 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9867294068b7e56e396ea026883d6bb3024ddd29ddfd71955050ab43e1fe76`  
		Last Modified: Wed, 12 Aug 2026 17:41:17 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a899a49b90d30cd60c915c00fbe4bda537f8255013efb0e2507d69faecb30fcb`  
		Last Modified: Wed, 12 Aug 2026 17:41:18 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a555b4042ea4285fbdb5cf495391630764f85ac91a0a8e1b78c05c224efe0ae3`  
		Last Modified: Wed, 12 Aug 2026 17:41:18 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.1` - unknown; unknown

```console
$ docker pull logstash@sha256:9ed64ccc3e161234876b14d7355d7cbdccae825c55d2697ad1266950c44cbaf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96ccaa46f68de8b7b788df8ece9c54341c5a7eb68b8ef467141f5debdf6faf6`

```dockerfile
```

-	Layers:
	-	`sha256:420bf814135bddb049179f671441d5fdaad8e0caede8c514dbc4dd17783ec656`  
		Last Modified: Wed, 12 Aug 2026 17:41:15 GMT  
		Size: 2.1 MB (2140573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a24030d6ee8837f8f71612efd88ffaac5b463718615cc41578db37f3056687fc`  
		Last Modified: Wed, 12 Aug 2026 17:41:15 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
