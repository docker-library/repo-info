<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:7.17.8`](#elasticsearch7178)
-	[`elasticsearch:8.6.0`](#elasticsearch860)

## `elasticsearch:7.17.8`

```console
$ docker pull elasticsearch@sha256:fdc73b3249c1936f7a277911d58bd10bdd5cf7aae07c1f4d285cf3b7bd18e503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `elasticsearch:7.17.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:d1b1c87fcd3e6039695f9e67052865ee85568d1be343e26326a6d3b73076b7c0
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.1 MB (354138324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b4df3b1f757e99cb6cee3818f1b9da9a47855741ef06d8b495283d3ad6d9cf2`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 25 Oct 2022 01:53:34 GMT
ADD file:7633003155a1059419aa1a6756fafb6e4f419d65bff7feb7c945de1e29dccb1e in / 
# Tue, 25 Oct 2022 01:53:35 GMT
CMD ["bash"]
# Fri, 02 Dec 2022 17:38:29 GMT
RUN yes no | dpkg-reconfigure dash &&     for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat p11-kit unzip zip &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code
# Fri, 02 Dec 2022 17:38:30 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser --uid 1000 --gid 1000 --home /usr/share/elasticsearch elasticsearch &&     adduser elasticsearch root &&     chown -R 0:0 /usr/share/elasticsearch
# Fri, 02 Dec 2022 17:38:30 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 02 Dec 2022 17:38:30 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 02 Dec 2022 17:38:37 GMT
COPY --chown=0:0dir:15beec23a18e3cab272ee0479a77dc21f31bc10561c3eb72a1b84cf33eb522f6 in /usr/share/elasticsearch 
# Fri, 02 Dec 2022 17:38:39 GMT
COPY --chown=0:0file:fcc427e6b1b34164533c7d80cf8bba68e6f09d5c7d442ca055586359d7076e62 in /bin/tini 
# Fri, 02 Dec 2022 17:38:39 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Dec 2022 17:38:39 GMT
COPY file:35bdfc6ad8079cb9cab605169a09ebfe8ce26cd4a9e4120efe12f418073a9bfb in /usr/local/bin/docker-entrypoint.sh 
# Fri, 02 Dec 2022 17:38:40 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins
# Fri, 02 Dec 2022 17:38:40 GMT
COPY file:12a03e8b4b92c72f58aeb5fcc5d8c6ce94ffb52fa4e13b04e23229fa535fedc0 in /etc/ca-certificates/update.d/docker-openjdk 
# Fri, 02 Dec 2022 17:38:41 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk
# Fri, 02 Dec 2022 17:38:41 GMT
EXPOSE 9200 9300
# Fri, 02 Dec 2022 17:38:41 GMT
LABEL org.label-schema.build-date=2022-12-02T17:33:09.727072865Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=120eabe1c8a0cb2ae87cffc109a5b65d213e9df1 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=7.17.8 org.opencontainers.image.created=2022-12-02T17:33:09.727072865Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=120eabe1c8a0cb2ae87cffc109a5b65d213e9df1 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=7.17.8
# Fri, 02 Dec 2022 17:38:41 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 02 Dec 2022 17:38:41 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:eaead16dc43bb8811d4ff450935d607f9ba4baffda4fc110cc402fa43f601d83`  
		Last Modified: Fri, 21 Oct 2022 03:03:39 GMT  
		Size: 28.6 MB (28577834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e247f12a2b5fadf2435dffd0df6cffeee9128409e488ff855ba929842da14620`  
		Last Modified: Thu, 08 Dec 2022 19:22:06 GMT  
		Size: 8.7 MB (8686061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0495283e7099e4d6b1131aff25a580571b82c9d651aa943acb4134202894f67`  
		Last Modified: Thu, 08 Dec 2022 19:22:05 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7e458ee5994c2382fa67ad3d971d6afd21943861275c2f508639430f61861e`  
		Last Modified: Thu, 08 Dec 2022 19:22:29 GMT  
		Size: 316.6 MB (316563617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ffe59d0e2690f7196442d2e5098637b854fb5b5908155355d3ed3219ecac53`  
		Last Modified: Thu, 08 Dec 2022 19:22:03 GMT  
		Size: 9.5 KB (9527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab476f874bd0ed85446659b8d33f1e3362c295451579a01d3a9c34caeca103b`  
		Last Modified: Thu, 08 Dec 2022 19:22:03 GMT  
		Size: 2.0 KB (1981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20df4c47e643927cf82d269360a02b48f1da3c9f690a29973df36207ffa69ee`  
		Last Modified: Thu, 08 Dec 2022 19:22:03 GMT  
		Size: 192.1 KB (192138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef90b430ba5b81dd4918270805f86e347cea0011a15df8349bfd241e3fd8e2cb`  
		Last Modified: Thu, 08 Dec 2022 19:22:03 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f96f41bfec89084d3adfdf2bcd6f20547fb88df452fac9f241e909800e3d3d`  
		Last Modified: Thu, 08 Dec 2022 19:22:03 GMT  
		Size: 102.4 KB (102413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elasticsearch:7.17.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:abb19313e30d1e56f0c2e022cce8ba743215922483c9da5cca04c718e768493e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.0 MB (351011804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e7a751ed4f0a3ecf2e6f7c0153dc516731336b150e8ed371c8ad6af087d958`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 25 Oct 2022 05:54:59 GMT
ADD file:6784d0c4432f4f32d6ee4d96eedf33ea82d88ef6901c763665fa77c842621999 in / 
# Tue, 25 Oct 2022 05:54:59 GMT
CMD ["bash"]
# Fri, 02 Dec 2022 17:38:45 GMT
RUN yes no | dpkg-reconfigure dash &&     for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat p11-kit unzip zip &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Fri, 02 Dec 2022 17:38:48 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser --uid 1000 --gid 1000 --home /usr/share/elasticsearch elasticsearch &&     adduser elasticsearch root &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 02 Dec 2022 17:38:48 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 02 Dec 2022 17:38:48 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 02 Dec 2022 17:38:50 GMT
COPY /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Fri, 02 Dec 2022 17:38:50 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 02 Dec 2022 17:38:50 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Dec 2022 17:38:50 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 02 Dec 2022 17:38:50 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 02 Dec 2022 17:38:50 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Fri, 02 Dec 2022 17:38:51 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Fri, 02 Dec 2022 17:38:51 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 02 Dec 2022 17:38:51 GMT
LABEL org.label-schema.build-date=2022-12-02T17:33:09.727072865Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=120eabe1c8a0cb2ae87cffc109a5b65d213e9df1 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=7.17.8 org.opencontainers.image.created=2022-12-02T17:33:09.727072865Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=120eabe1c8a0cb2ae87cffc109a5b65d213e9df1 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=7.17.8
# Fri, 02 Dec 2022 17:38:51 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 02 Dec 2022 17:38:51 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:4e7e0215f4adc2c48ad9cb3b3781e21d474b477587f85682c2e2975ae91dce9d`  
		Last Modified: Tue, 25 Oct 2022 05:55:59 GMT  
		Size: 27.2 MB (27195998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e203ee7abb6500800d9319317105809a398b5be3e3d1130e2178a84b8630daf`  
		Last Modified: Thu, 08 Dec 2022 18:41:16 GMT  
		Size: 8.5 MB (8490726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33638d7e763d5519b298022ea49693b7d87681bf5f29c4f8ccb03eae2f588fc`  
		Last Modified: Thu, 08 Dec 2022 18:41:15 GMT  
		Size: 4.4 KB (4360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70884ade5b8f9939665241d36329788803d678288f787c0464b856c17190aa3`  
		Last Modified: Thu, 08 Dec 2022 18:41:34 GMT  
		Size: 315.0 MB (315020612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a951d1a6de13fb838fad0ad3a08d924e12b4e930ec79196ac19929d58284259c`  
		Last Modified: Thu, 08 Dec 2022 18:41:12 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9133d822c8166cee37e725eb6556f1cc7f004a7462e03d021a3eade1e14d2b25`  
		Last Modified: Thu, 08 Dec 2022 18:41:12 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7974d905102e90a77a5ed48be1c49b874b8da5ede1b49e6f194e4e698aeb7f6e`  
		Last Modified: Thu, 08 Dec 2022 18:41:12 GMT  
		Size: 186.2 KB (186165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1befb3933d86201a2a9b3228b65641fec16107722b97d2640fda01f606dd030`  
		Last Modified: Thu, 08 Dec 2022 18:41:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf543a5a7fee5a0fb6927ef68b3cfc8d8b79d54898e7dd332d1e20b70ab73624`  
		Last Modified: Thu, 08 Dec 2022 18:41:15 GMT  
		Size: 102.4 KB (102417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:8.6.0`

```console
$ docker pull elasticsearch@sha256:12d0ff50b96a53d2a8e103ba2e0e69187babc3dcf8bdc88788d019cdebb75c0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `elasticsearch:8.6.0` - linux; amd64

```console
$ docker pull elasticsearch@sha256:e9159cdbe43477d62a9fc78db5ded9c13d8eff0f76de0fec06227dbd2480628f
```

-	Docker Version: 20.10.22
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.8 MB (624842229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6053d49e45092444029b90a6aaf0d53332a03d348c9f2343443c97290cdeb0af`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Wed, 04 Jan 2023 09:43:59 GMT
RUN yes no | dpkg-reconfigure dash &&     for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code
# Wed, 04 Jan 2023 09:44:02 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser --uid 1000 --gid 1000 --home /usr/share/elasticsearch elasticsearch &&     adduser elasticsearch root &&     chown -R 0:0 /usr/share/elasticsearch
# Wed, 04 Jan 2023 09:44:08 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 04 Jan 2023 09:44:09 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 04 Jan 2023 09:44:23 GMT
COPY --chown=0:0dir:058167b10f11273c22849495f4917d794ed4f523d7f4ce5260542ada9b62aada in /usr/share/elasticsearch 
# Wed, 04 Jan 2023 09:44:24 GMT
COPY --chown=0:0file:fcc427e6b1b34164533c7d80cf8bba68e6f09d5c7d442ca055586359d7076e62 in /bin/tini 
# Wed, 04 Jan 2023 09:44:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2023 09:44:24 GMT
COPY file:480ac78aea3a6b2b78f3489c03400c7b30d7129a2955fcf04b47c6666f033929 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 04 Jan 2023 09:44:28 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins
# Wed, 04 Jan 2023 09:44:29 GMT
COPY file:12a03e8b4b92c72f58aeb5fcc5d8c6ce94ffb52fa4e13b04e23229fa535fedc0 in /etc/ca-certificates/update.d/docker-openjdk 
# Wed, 04 Jan 2023 09:44:30 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk
# Wed, 04 Jan 2023 09:44:30 GMT
EXPOSE 9200 9300
# Wed, 04 Jan 2023 09:44:30 GMT
LABEL org.label-schema.build-date=2023-01-04T09:35:21.782467981Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=f67ef2df40237445caa70e2fef79471cc608d70d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.6.0 org.opencontainers.image.created=2023-01-04T09:35:21.782467981Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=f67ef2df40237445caa70e2fef79471cc608d70d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.6.0
# Wed, 04 Jan 2023 09:44:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 04 Jan 2023 09:44:31 GMT
CMD ["eswrapper"]
# Wed, 04 Jan 2023 09:44:31 GMT
USER elasticsearch:root
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3516e94dfa93fc4aa6cd0923da748c2737515d31714e331482107c5f0b5dd1a`  
		Last Modified: Tue, 10 Jan 2023 16:03:21 GMT  
		Size: 7.5 MB (7484268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d95ef1999f0a3a3bccf75e0841dac46c973cb18507361549b7b3b8ad189c62`  
		Last Modified: Tue, 10 Jan 2023 16:03:19 GMT  
		Size: 4.3 KB (4333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69af40093f3486ef3afc1048ff499e38e9caeabe268c1ae01d8ced9f72760fd6`  
		Last Modified: Tue, 10 Jan 2023 16:04:10 GMT  
		Size: 588.5 MB (588473234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d2fb4780298aed5097c4682e76851defe46ebefbdf9624672a5fff97c3cc00`  
		Last Modified: Tue, 10 Jan 2023 16:03:19 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14619d64e0226ba32fe24e44624f7aaaa0146fbd6d8a5f7b25b4f74d58b3c88f`  
		Last Modified: Tue, 10 Jan 2023 16:03:19 GMT  
		Size: 1.7 KB (1726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff00ac3f583672d443710cd6676c0159e14e32db75645a408e9693d91f8be31e`  
		Last Modified: Tue, 10 Jan 2023 16:03:19 GMT  
		Size: 191.9 KB (191866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eed17832094f484ae11cc3aed396c0cc459c2a7a96ed5ddfdf7cf807963e0b8`  
		Last Modified: Tue, 10 Jan 2023 16:03:18 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7083c2053bf00a1e2b319d340ad9bbe47b22da56773a27052cdac5be9f2311`  
		Last Modified: Tue, 10 Jan 2023 16:03:18 GMT  
		Size: 100.0 KB (99984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elasticsearch:8.6.0` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:6fed9f4d4b235bf7ba6bce307ee1b85acbb670e8c361d3f0383e88243f6b9e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.2 MB (420236627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d4c93bc194281e607ebbf48533d902e55df127fd5a49016d4ded79a9225b07`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Wed, 04 Jan 2023 09:42:40 GMT
RUN yes no | dpkg-reconfigure dash &&     for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 04 Jan 2023 09:42:47 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser --uid 1000 --gid 1000 --home /usr/share/elasticsearch elasticsearch &&     adduser elasticsearch root &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 04 Jan 2023 09:42:47 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 04 Jan 2023 09:42:47 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 04 Jan 2023 09:43:15 GMT
COPY /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 04 Jan 2023 09:43:16 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 04 Jan 2023 09:43:16 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2023 09:43:16 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 04 Jan 2023 09:43:17 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 04 Jan 2023 09:43:17 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 04 Jan 2023 09:43:18 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 04 Jan 2023 09:43:18 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 04 Jan 2023 09:43:18 GMT
LABEL org.label-schema.build-date=2023-01-04T09:35:21.782467981Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=f67ef2df40237445caa70e2fef79471cc608d70d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.6.0 org.opencontainers.image.created=2023-01-04T09:35:21.782467981Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=f67ef2df40237445caa70e2fef79471cc608d70d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.6.0
# Wed, 04 Jan 2023 09:43:18 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 04 Jan 2023 09:43:18 GMT
CMD ["eswrapper"]
# Wed, 04 Jan 2023 09:43:18 GMT
USER elasticsearch:root
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b204f459fbbb84481815ca9aab381032da21977aff53d234ed74ccb0d54ba696`  
		Last Modified: Wed, 11 Jan 2023 00:44:00 GMT  
		Size: 7.3 MB (7304635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2bc0ac3fa72024fd7d3e26866f500dc1bd56a3a7118fe936e989199f9e8384`  
		Last Modified: Wed, 11 Jan 2023 00:43:59 GMT  
		Size: 4.4 KB (4362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beea53f68bb619ca4b2e62a732f3015c745934cc8c37037cf73a37aab2a7487b`  
		Last Modified: Wed, 11 Jan 2023 00:44:20 GMT  
		Size: 385.4 MB (385437304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee6f894df6aabafb006086770579473c3fee1cb7290c7ecb842d00e5ea020e4`  
		Last Modified: Wed, 11 Jan 2023 00:43:56 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759280ba6bc58833a3b8d2ed48688ea86035f859efc17dac63bf5dd18e2dba3f`  
		Last Modified: Wed, 11 Jan 2023 00:43:56 GMT  
		Size: 1.7 KB (1725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46455a3a48f7c269e8eb6b3c889debbf5134e8670bac30b10177977494c493e6`  
		Last Modified: Wed, 11 Jan 2023 00:43:57 GMT  
		Size: 185.9 KB (185898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7c7616fc01e1ef2b8058b27e3bd140d2febdda2858db6460273cc6e14a094a`  
		Last Modified: Wed, 11 Jan 2023 00:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9076d3ab55ae075ae2b3dd2870f1f14efe4d686f61d73cef480253ca0fb7a82d`  
		Last Modified: Wed, 11 Jan 2023 00:44:00 GMT  
		Size: 100.0 KB (99995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
